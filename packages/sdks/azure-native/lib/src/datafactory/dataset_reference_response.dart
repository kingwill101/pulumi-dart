// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dataset reference type.
class DatasetReferenceResponse {
  /// Arguments for dataset.
  final pulumi.Input<Map<String, dynamic>>? parameters;

  /// Reference dataset name.
  final pulumi.Input<String> referenceName;

  /// Dataset reference type.
  final pulumi.Input<String> type;

  /// Creates a new [DatasetReferenceResponse].
  /// [parameters] Arguments for dataset.
  /// [referenceName] Reference dataset name.
  /// [type] Dataset reference type.
  DatasetReferenceResponse({
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

  factory DatasetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return DatasetReferenceResponse(
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
