// ignore_for_file: unused_element, unnecessary_cast


class ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions {
  /// The exclusion window end time behavior. One of: **UNTIL_END_OF_SUPPORT**. One and and one of `end_time_behavior` and `end_time` should be specified.
  ///
  /// Specify `start_time` and `end_time` in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) "Zulu" date format.  The start time's date is
  /// the initial date that the window starts, and the end time is used for calculating duration.Specify `recurrence` in
  /// [RFC5545](https://tools.ietf.org/html/rfc5545#section-3.8.5.3) RRULE format, to specify when this recurs.
  /// Note that GKE may accept other formats, but will return values in UTC, causing a permanent diff.
  ///
  /// Examples:
  ///
  /// ```
  /// maintenance_policy {
  /// recurring_window {
  /// start_time = "2019-01-01T00:00:00Z"
  /// end_time = "2019-01-02T00:00:00Z"
  /// recurrence = "FREQ=DAILY"
  /// }
  /// maintenance_exclusion{
  /// exclusion_name = "batch job"
  /// start_time = "2019-01-01T00:00:00Z"
  /// end_time = "2019-01-02T00:00:00Z"
  /// exclusion_options {
  /// scope = "NO_UPGRADES"
  /// }
  /// }
  /// maintenance_exclusion{
  /// exclusion_name = "holiday data load"
  /// start_time = "2019-05-01T00:00:00Z"
  /// exclusion_options {
  /// scope = "NO_MINOR_UPGRADES"
  /// end_time_behavior = "UNTIL_END_OF_SUPPORT"
  /// }
  /// }
  /// }
  /// ```
  final String? endTimeBehavior;
  /// The scope of automatic upgrades to restrict in the exclusion window. One of: **NO_UPGRADES | NO_MINOR_UPGRADES | NO_MINOR_OR_NODE_UPGRADES**
  final String scope;

  /// Creates a new [ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions].
  /// [endTimeBehavior] The exclusion window end time behavior. One of: **UNTIL_END_OF_SUPPORT**. One and and one of `end_time_behavior` and `end_time` should be specified.
  /// [scope] The scope of automatic upgrades to restrict in the exclusion window. One of: **NO_UPGRADES | NO_MINOR_UPGRADES | NO_MINOR_OR_NODE_UPGRADES**
  ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions({
    this.endTimeBehavior,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeBehavior': ?endTimeBehavior,
      'scope': scope,
    };
  }

  factory ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions.fromMap(Map<String, dynamic> map) {
    return ClusterMaintenancePolicyMaintenanceExclusionExclusionOptions(
      endTimeBehavior: map['endTimeBehavior'] == null ? null : map['endTimeBehavior'] as String,
      scope: map['scope'] as String,
    );
  }
}

