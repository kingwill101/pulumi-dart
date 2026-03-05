// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolTeeConfig {
  /// Specifies whether to enable confidential computing for the cluster.
  final pulumi.Input<bool>? teeEnable;

  /// Creates a new [NodePoolTeeConfig].
  /// [teeEnable] Specifies whether to enable confidential computing for the cluster.
  NodePoolTeeConfig({
    this.teeEnable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'teeEnable': ?teeEnable,
    };
  }

  factory NodePoolTeeConfig.fromMap(Map<String, dynamic> map) {
    return NodePoolTeeConfig(
      teeEnable: (() { final guardedValue = map['teeEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

