// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

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
  final pulumi.Input<bool>? enabled;

  /// Creates a new [InstanceBlueGreenUpdate].
  /// [enabled] Enables low-downtime updates when `true`.
  InstanceBlueGreenUpdate({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory InstanceBlueGreenUpdate.fromMap(Map<String, dynamic> map) {
    return InstanceBlueGreenUpdate(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

