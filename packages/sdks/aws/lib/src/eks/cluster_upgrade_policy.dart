// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterUpgradePolicy {
  /// Support type to use for the cluster. If the cluster is set to `EXTENDED`, it will enter extended support at the end of standard support. If the cluster is set to `STANDARD`, it will be automatically upgraded at the end of standard support. Valid values are `EXTENDED`, `STANDARD`
  final pulumi.Input<String>? supportType;

  /// Creates a new [ClusterUpgradePolicy].
  /// [supportType] Support type to use for the cluster. If the cluster is set to `EXTENDED`, it will enter extended support at the end of standard support. If the cluster is set to `STANDARD`, it will be automatically upgraded at the end of standard support. Valid values are `EXTENDED`, `STANDARD`
  ClusterUpgradePolicy({
    this.supportType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportType': ?supportType,
    };
  }

  factory ClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return ClusterUpgradePolicy(
      supportType: (() { final guardedValue = map['supportType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

