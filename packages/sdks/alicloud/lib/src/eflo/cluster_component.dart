// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_component_component_config.dart';

class ClusterComponent {
  /// Component Configuration See `component_config` below.
  final ClusterComponentComponentConfig? componentConfig;
  /// Component Type
  final String? componentType;

  /// Creates a new [ClusterComponent].
  /// [componentConfig] Component Configuration See `component_config` below.
  /// [componentType] Component Type
  ClusterComponent({
    this.componentConfig,
    this.componentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig': ?componentConfig == null ? null : componentConfig!.toMap(),
      'componentType': ?componentType,
    };
  }

  factory ClusterComponent.fromMap(Map<String, dynamic> map) {
    return ClusterComponent(
      componentConfig: map['componentConfig'] == null ? null : ClusterComponentComponentConfig.fromMap((map['componentConfig'] as Map).cast<String, dynamic>()),
      componentType: map['componentType'] == null ? null : map['componentType'] as String,
    );
  }
}

