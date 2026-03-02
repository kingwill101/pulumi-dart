// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dapr component metadata.
class DaprServiceBindMetadataResponse {
  /// Service bind metadata property name.
  final pulumi.Input<String>? name;
  /// Service bind metadata property value.
  final pulumi.Input<String>? value;

  /// Creates a new [DaprServiceBindMetadataResponse].
  /// [name] Service bind metadata property name.
  /// [value] Service bind metadata property value.
  DaprServiceBindMetadataResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DaprServiceBindMetadataResponse.fromMap(Map<String, dynamic> map) {
    return DaprServiceBindMetadataResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

