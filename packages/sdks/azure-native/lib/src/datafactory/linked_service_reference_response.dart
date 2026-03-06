// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Linked service reference type.
class LinkedServiceReferenceResponse {
  /// Arguments for LinkedService.
  final pulumi.Input<Map<String, dynamic>>? parameters;
  /// Reference LinkedService name.
  final pulumi.Input<String> referenceName;
  /// Linked service reference type.
  final pulumi.Input<String> type;

  /// Creates a new [LinkedServiceReferenceResponse].
  /// [parameters] Arguments for LinkedService.
  /// [referenceName] Reference LinkedService name.
  /// [type] Linked service reference type.
  const LinkedServiceReferenceResponse({
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

  factory LinkedServiceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return LinkedServiceReferenceResponse(
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      referenceName: pulumi.Input.fromValue(map['referenceName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

