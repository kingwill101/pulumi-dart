// ignore_for_file: unused_element, unnecessary_cast

class InstanceBlueGreenUpdate {
  /// Enables low-downtime updates when `true`.
  /// Default is `false`.
  ///
  /// [instance-replication]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Replication.html
  /// [instance-maintenance]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html
  /// [blue-green]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
  final bool? enabled;

  /// Creates a new [InstanceBlueGreenUpdate].
  /// [enabled] Enables low-downtime updates when `true`.
  InstanceBlueGreenUpdate({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory InstanceBlueGreenUpdate.fromMap(Map<String, dynamic> map) {
    return InstanceBlueGreenUpdate(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
