// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterComponentComponentConfig {
  /// Component Basic Parameters
  final pulumi.Input<String>? basicArgs;
  /// Node pool configuration, and is used to establish the corresponding relationship between node groups and node pools. When
  /// ComponentType = "ACKEdge" is required. Other values are empty.
  final pulumi.Input<List<String>>? nodeUnits;

  /// Creates a new [ClusterComponentComponentConfig].
  /// [basicArgs] Component Basic Parameters
  /// [nodeUnits] Node pool configuration, and is used to establish the corresponding relationship between node groups and node pools. When
  ClusterComponentComponentConfig({
    this.basicArgs,
    this.nodeUnits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicArgs': ?basicArgs,
      'nodeUnits': ?nodeUnits,
    };
  }

  factory ClusterComponentComponentConfig.fromMap(Map<String, dynamic> map) {
    return ClusterComponentComponentConfig(
      basicArgs: map['basicArgs'] == null ? null : (map['basicArgs'] as String).input(),
      nodeUnits: map['nodeUnits'] == null ? null : ((map['nodeUnits'] as List).cast<String>()).input(),
    );
  }
}

