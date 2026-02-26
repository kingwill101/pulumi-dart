// ignore_for_file: unused_element, unnecessary_cast

import 'domain_mapping_spec_certificate_mode.dart';

/// The desired state of the Domain Mapping.
class DomainMappingSpec {
  /// The mode of the certificate.
  final DomainMappingSpecCertificateMode? certificateMode;

  /// If set, the mapping will override any mapping set before this spec was set. It is recommended that the user leaves this empty to receive an error warning about a potential conflict and only set it once the respective UI has given such a warning.
  final bool? forceOverride;

  /// The name of the Knative Route that this DomainMapping applies to. The route must exist.
  final String? routeName;

  DomainMappingSpec({
    this.certificateMode,
    this.forceOverride,
    this.routeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateModeValue = certificateMode;
    if (certificateModeValue != null) {
      map['certificateMode'] = certificateModeValue.value;
    }
    final forceOverrideValue = forceOverride;
    if (forceOverrideValue != null) {
      map['forceOverride'] = forceOverrideValue;
    }
    final routeNameValue = routeName;
    if (routeNameValue != null) {
      map['routeName'] = routeNameValue;
    }
    return map;
  }

  factory DomainMappingSpec.fromMap(Map<String, dynamic> map) {
    return DomainMappingSpec(
      certificateMode: map['certificateMode'] == null
          ? null
          : DomainMappingSpecCertificateMode.fromValue(
              map['certificateMode'] as String),
      forceOverride:
          map['forceOverride'] == null ? null : map['forceOverride'] as bool,
      routeName: map['routeName'] == null ? null : map['routeName'] as String,
    );
  }
}
