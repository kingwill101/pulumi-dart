// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataset reference type.
class DatasetReference {
  /// Arguments for dataset.
  final pulumi.Input<dynamic>? parameters;
  /// Reference dataset name.
  final pulumi.Input<String> referenceName;
  /// Dataset reference type.
  final pulumi.Input<String> type;

  /// Creates a new [DatasetReference].
  /// [parameters] Arguments for dataset.
  /// [referenceName] Reference dataset name.
  /// [type] Dataset reference type.
  const DatasetReference({
    this.parameters,
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameters': ?parameters,
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory DatasetReference.fromMap(Map<String, dynamic> map) {
    return DatasetReference(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
