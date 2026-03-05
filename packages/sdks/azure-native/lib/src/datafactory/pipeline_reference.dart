// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline reference type.
class PipelineReference {
  /// Reference name.
  final pulumi.Input<String>? name;
  /// Reference pipeline name.
  final pulumi.Input<String> referenceName;
  /// Pipeline reference type.
  final pulumi.Input<String> type;

  /// Creates a new [PipelineReference].
  /// [name] Reference name.
  /// [referenceName] Reference pipeline name.
  /// [type] Pipeline reference type.
  PipelineReference({
    this.name,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory PipelineReference.fromMap(Map<String, dynamic> map) {
    return PipelineReference(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

