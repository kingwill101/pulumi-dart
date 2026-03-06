// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupUpdateConfig {
  /// Desired max number of unavailable worker nodes during node group update.
  final pulumi.Input<int>? maxUnavailable;
  /// Desired max percentage of unavailable worker nodes during node group update.
  final pulumi.Input<int>? maxUnavailablePercentage;
  /// Strategy to use for updating the node group. Valid values: `MINIMAL` and `DEFAULT`.
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [NodeGroupUpdateConfig].
  /// [maxUnavailable] Desired max number of unavailable worker nodes during node group update.
  /// [maxUnavailablePercentage] Desired max percentage of unavailable worker nodes during node group update.
  /// [updateStrategy] Strategy to use for updating the node group. Valid values: `MINIMAL` and `DEFAULT`.
  const NodeGroupUpdateConfig({
    this.maxUnavailable,
    this.maxUnavailablePercentage,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxUnavailable': ?maxUnavailable,
      'maxUnavailablePercentage': ?maxUnavailablePercentage,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory NodeGroupUpdateConfig.fromMap(Map<String, dynamic> map) {
    return NodeGroupUpdateConfig(
      maxUnavailable: (() { final guardedValue = map['maxUnavailable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxUnavailablePercentage: (() { final guardedValue = map['maxUnavailablePercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

