// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterOutpostConfigControlPlanePlacement {
  /// Name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
  final pulumi.Input<String?>? groupName;
  /// Placement group spread level for control plane instances. Valid values: `host`, `rack`.
  final pulumi.Input<String?>? spreadLevel;

  /// Creates a new [ClusterOutpostConfigControlPlanePlacement].
  /// [groupName] Name of the placement group for the Kubernetes control plane instances. This setting can't be changed after cluster creation.
  /// [spreadLevel] Placement group spread level for control plane instances. Valid values: `host`, `rack`.
  const ClusterOutpostConfigControlPlanePlacement({
    this.groupName,
    this.spreadLevel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'spreadLevel': ?spreadLevel,
    };
  }

  factory ClusterOutpostConfigControlPlanePlacement.fromMap(Map<String, dynamic> map) {
    return ClusterOutpostConfigControlPlanePlacement(
      groupName: (() { final guardedValue = map['groupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spreadLevel: (() { final guardedValue = map['spreadLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
