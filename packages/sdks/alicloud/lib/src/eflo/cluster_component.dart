// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_component_component_config.dart';

class ClusterComponent {
  /// Component Configuration See `component_config` below.
  final pulumi.Input<ClusterComponentComponentConfig>? componentConfig;
  /// Component Type
  final pulumi.Input<String>? componentType;

  /// Creates a new [ClusterComponent].
  /// [componentConfig] Component Configuration See `component_config` below.
  /// [componentType] Component Type
  ClusterComponent({
    this.componentConfig,
    this.componentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?pulumi.Input.mapOptionalInputValue<ClusterComponentComponentConfig, Map<String, dynamic>>(componentConfig, (value) => value.toMap()),
      'componentType': ?componentType,
    };
  }

  factory ClusterComponent.fromMap(Map<String, dynamic> map) {
    return ClusterComponent(
      componentConfig: map['componentConfig'] == null ? null : (ClusterComponentComponentConfig.fromMap((map['componentConfig'] as Map).cast<String, dynamic>())).input(),
      componentType: map['componentType'] == null ? null : (map['componentType'] as String).input(),
    );
  }
}

