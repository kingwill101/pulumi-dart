// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr component metadata.
class DaprServiceBindMetadata {
  /// Service bind metadata property name.
  final pulumi.Input<String>? name;
  /// Service bind metadata property value.
  final pulumi.Input<String>? value;

  /// Creates a new [DaprServiceBindMetadata].
  /// [name] Service bind metadata property name.
  /// [value] Service bind metadata property value.
  const DaprServiceBindMetadata({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DaprServiceBindMetadata.fromMap(Map<String, dynamic> map) {
    return DaprServiceBindMetadata(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

