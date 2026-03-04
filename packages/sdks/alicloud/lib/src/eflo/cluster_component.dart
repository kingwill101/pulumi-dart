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
  ClusterComponent({this.componentConfig, this.componentType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterComponentComponentConfig,
            Map<String, dynamic>
          >(componentConfig, (value) => value.toMap()),
      'componentType': ?componentType,
    };
  }

  factory ClusterComponent.fromMap(Map<String, dynamic> map) {
    return ClusterComponent(
      componentConfig: (() {
        final guardedValue = map['componentConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterComponentComponentConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      componentType: (() {
        final guardedValue = map['componentType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
