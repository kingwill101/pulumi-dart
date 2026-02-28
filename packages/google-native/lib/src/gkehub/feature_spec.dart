// ignore_for_file: unused_element, unnecessary_cast

import 'feature_spec_provision_google_ca.dart';
import 'membership_spec.dart';

/// **Workload Certificate**: The Hub-wide input for the WorkloadCertificate feature.
class FeatureSpec {
  /// Specifies default membership spec. Users can override the default in the member_configs for each member.
  final MembershipSpec? defaultConfig;

  /// Immutable. Specifies CA configuration.
  final FeatureSpecProvisionGoogleCa? provisionGoogleCa;

  /// Creates a new [FeatureSpec].
  /// [defaultConfig] Specifies default membership spec. Users can override the default in the member_configs for each member.
  /// [provisionGoogleCa] Immutable. Specifies CA configuration.
  FeatureSpec({
    this.defaultConfig,
    this.provisionGoogleCa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultConfigValue = defaultConfig;
    if (defaultConfigValue != null) {
      map['defaultConfig'] = defaultConfigValue.toMap();
    }
    final provisionGoogleCaValue = provisionGoogleCa;
    if (provisionGoogleCaValue != null) {
      map['provisionGoogleCa'] = provisionGoogleCaValue.value;
    }
    return map;
  }

  factory FeatureSpec.fromMap(Map<String, dynamic> map) {
    return FeatureSpec(
      defaultConfig: map['defaultConfig'] == null
          ? null
          : MembershipSpec.fromMap(
              (map['defaultConfig'] as Map).cast<String, dynamic>()),
      provisionGoogleCa: map['provisionGoogleCa'] == null
          ? null
          : FeatureSpecProvisionGoogleCa.fromValue(
              map['provisionGoogleCa'] as String),
    );
  }
}
