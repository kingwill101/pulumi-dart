// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_properties.dart';

/// Defines a desired runtime component.
class TopologiesProperties {
  /// bindings description.
  final List<BindingProperties>? bindings;

  /// Creates a new [TopologiesProperties].
  /// [bindings] bindings description.
  TopologiesProperties({
    this.bindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?bindings == null ? null : pulumi.Input.encodeList<BindingProperties, Map<String, dynamic>>(bindings!, (value) => value.toMap()),
    };
  }

  factory TopologiesProperties.fromMap(Map<String, dynamic> map) {
    return TopologiesProperties(
      bindings: map['bindings'] == null ? null : pulumi.Input.decodeList<BindingProperties>(map['bindings'], (value) => BindingProperties.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

