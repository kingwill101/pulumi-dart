// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'binding_properties.dart';

/// Defines a desired runtime component.
class TopologiesProperties {
  /// bindings description.
  final pulumi.Input<List<BindingProperties>?>? bindings;

  /// Creates a new [TopologiesProperties].
  /// [bindings] bindings description.
  const TopologiesProperties({
    this.bindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindings': ?pulumi.Input.mapOptionalInputValue<List<BindingProperties>, List<Map<String, dynamic>>>(bindings, (value) => pulumi.Input.encodeList<BindingProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TopologiesProperties.fromMap(Map<String, dynamic> map) {
    return TopologiesProperties(
      bindings: (() { final guardedValue = map['bindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BindingProperties>(guardedValue, (value) => BindingProperties.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
