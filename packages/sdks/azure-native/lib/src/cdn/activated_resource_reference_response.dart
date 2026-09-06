// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Reference to another resource along with its state.
class ActivatedResourceReferenceResponse {
  /// Resource ID.
  final pulumi.Input<String?>? id;
  /// Whether the resource is active or inactive
  final pulumi.Input<bool> isActive;

  /// Creates a new [ActivatedResourceReferenceResponse].
  /// [id] Resource ID.
  /// [isActive] Whether the resource is active or inactive
  const ActivatedResourceReferenceResponse({
    this.id,
    required this.isActive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'isActive': isActive,
    };
  }

  factory ActivatedResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ActivatedResourceReferenceResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isActive: pulumi.Input.fromValue(map['isActive'] as bool),
    );
  }
}
