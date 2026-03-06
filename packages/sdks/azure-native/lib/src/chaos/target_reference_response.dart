// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Model that represents a reference to a Target in the selector.
class TargetReferenceResponse {
  /// String of the resource ID of a Target resource.
  final pulumi.Input<String> id;
  /// Enum of the Target reference type.
  final pulumi.Input<String> type;

  /// Creates a new [TargetReferenceResponse].
  /// [id] String of the resource ID of a Target resource.
  /// [type] Enum of the Target reference type.
  const TargetReferenceResponse({
    required this.id,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'type': type,
    };
  }

  factory TargetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return TargetReferenceResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

