// ignore_for_file: unused_element, unnecessary_cast

class DistributionPolicyZoneConfigurationResponse {
  /// The URL of the zone. The zone must exist in the region where the managed instance group is located.
  final String zone;

  /// Creates a new [DistributionPolicyZoneConfigurationResponse].
  /// [zone] The URL of the zone. The zone must exist in the region where the managed instance group is located.
  DistributionPolicyZoneConfigurationResponse({required this.zone});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'zone': zone};
  }

  factory DistributionPolicyZoneConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DistributionPolicyZoneConfigurationResponse(
      zone: map['zone'] as String,
    );
  }
}
