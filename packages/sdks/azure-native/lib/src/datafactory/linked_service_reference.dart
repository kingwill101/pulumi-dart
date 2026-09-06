// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linked service reference type.
class LinkedServiceReference {
  /// Arguments for LinkedService.
  final pulumi.Input<dynamic>? parameters;
  /// Reference LinkedService name.
  final pulumi.Input<String> referenceName;
  /// Linked service reference type.
  final pulumi.Input<dynamic> type;

  /// Creates a new [LinkedServiceReference].
  /// [parameters] Arguments for LinkedService.
  /// [referenceName] Reference LinkedService name.
  /// [type] Linked service reference type.
  const LinkedServiceReference({
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

  factory LinkedServiceReference.fromMap(Map<String, dynamic> map) {
    return LinkedServiceReference(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type']),
    );
  }
}
