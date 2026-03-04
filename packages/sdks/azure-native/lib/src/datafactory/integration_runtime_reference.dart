// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Integration runtime reference type.
class IntegrationRuntimeReference {
  /// Arguments for integration runtime.
  final pulumi.Input<Map<String, dynamic>>? parameters;

  /// Reference integration runtime name.
  final pulumi.Input<String> referenceName;

  /// Type of integration runtime.
  final pulumi.Input<String> type;

  /// Creates a new [IntegrationRuntimeReference].
  /// [parameters] Arguments for integration runtime.
  /// [referenceName] Reference integration runtime name.
  /// [type] Type of integration runtime.
  IntegrationRuntimeReference({
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

  factory IntegrationRuntimeReference.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeReference(
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
