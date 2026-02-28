// ignore_for_file: unused_element, unnecessary_cast

import 'membership_spec_response.dart';

/// **Workload Certificate**: The Hub-wide input for the WorkloadCertificate feature.
class FeatureSpecResponse {
  /// Specifies default membership spec. Users can override the default in the member_configs for each member.
  final MembershipSpecResponse defaultConfig;

  /// Immutable. Specifies CA configuration.
  final String provisionGoogleCa;

  /// Creates a new [FeatureSpecResponse].
  /// [defaultConfig] Specifies default membership spec. Users can override the default in the member_configs for each member.
  /// [provisionGoogleCa] Immutable. Specifies CA configuration.
  FeatureSpecResponse({
    required this.defaultConfig,
    required this.provisionGoogleCa,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['defaultConfig'] = defaultConfig.toMap();
    map['provisionGoogleCa'] = provisionGoogleCa;
    return map;
  }

  factory FeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSpecResponse(
      defaultConfig: MembershipSpecResponse.fromMap(
          (map['defaultConfig'] as Map).cast<String, dynamic>()),
      provisionGoogleCa: map['provisionGoogleCa'] as String,
    );
  }
}
