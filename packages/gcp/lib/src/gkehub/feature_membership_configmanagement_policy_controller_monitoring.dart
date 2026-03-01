// ignore_for_file: unused_element, unnecessary_cast

class FeatureMembershipConfigmanagementPolicyControllerMonitoring {
  /// Specifies the list of backends Policy Controller will export to. Must be one of `CLOUD_MONITORING` or `PROMETHEUS`. Defaults to [`CLOUD_MONITORING`, `PROMETHEUS`]. Specifying an empty value `[]` disables metrics export.
  final List<String>? backends;

  /// Creates a new [FeatureMembershipConfigmanagementPolicyControllerMonitoring].
  /// [backends] Specifies the list of backends Policy Controller will export to. Must be one of `CLOUD_MONITORING` or `PROMETHEUS`. Defaults to [`CLOUD_MONITORING`, `PROMETHEUS`]. Specifying an empty value `[]` disables metrics export.
  FeatureMembershipConfigmanagementPolicyControllerMonitoring({this.backends});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'backends': ?backends};
  }

  factory FeatureMembershipConfigmanagementPolicyControllerMonitoring.fromMap(
    Map<String, dynamic> map,
  ) {
    return FeatureMembershipConfigmanagementPolicyControllerMonitoring(
      backends: map['backends'] == null
          ? null
          : (map['backends'] as List).cast<String>(),
    );
  }
}
