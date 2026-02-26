// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'ssl_settings2.dart';

/// The set of arguments for DomainMapping.
class DomainMappingArgs2 {
  final Input<String> appId;

  /// Relative name of the domain serving the application. Example: example.com.
  final Input<String>? id;

  /// Whether a managed certificate should be provided by App Engine. If true, a certificate ID must be manaually set in the DomainMapping resource to configure SSL for this domain. If false, a managed certificate will be provisioned and a certificate ID will be automatically populated.
  final Input<bool>? noManagedCertificate;

  /// Whether the domain creation should override any existing mappings for this domain. By default, overrides are rejected.
  final Input<String>? overrideStrategy;

  /// SSL configuration for this domain. If unconfigured, this domain will not serve with SSL.
  final Input<SslSettings2>? sslSettings;

  DomainMappingArgs2({
    required this.appId,
    this.id,
    this.noManagedCertificate,
    this.overrideStrategy,
    this.sslSettings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appId'] = appId;
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final noManagedCertificateValue = noManagedCertificate;
    if (noManagedCertificateValue != null) {
      map['noManagedCertificate'] = noManagedCertificateValue;
    }
    final overrideStrategyValue = overrideStrategy;
    if (overrideStrategyValue != null) {
      map['overrideStrategy'] = overrideStrategyValue;
    }
    final sslSettingsValue = sslSettings;
    if (sslSettingsValue != null) {
      map['sslSettings'] =
          Input.mapOptionalInputValue<SslSettings2, Map<String, dynamic>>(
              sslSettingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory DomainMappingArgs2.fromMap(Map<String, dynamic> map) {
    return DomainMappingArgs2(
      appId: Input.asInput<String>(map['appId']),
      id: Input.asOptionalInput<String>(map['id']),
      noManagedCertificate:
          Input.asOptionalInput<bool>(map['noManagedCertificate']),
      overrideStrategy: Input.asOptionalInput<String>(map['overrideStrategy']),
      sslSettings: Input.asOptionalInput<SslSettings2>(map['sslSettings']),
    );
  }
}
