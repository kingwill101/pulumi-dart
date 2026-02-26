// ignore_for_file: unused_element, unnecessary_cast

class InstanceBlueGreenUpdate {
  /// Enables low-downtime updates when <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  /// Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  ///
  /// [instance-replication]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Overview.Replication.html
  /// [instance-maintenance]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_UpgradeDBInstance.Maintenance.html
  /// [blue-green]:
  /// https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/blue-green-deployments.html
  final bool? enabled;

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
