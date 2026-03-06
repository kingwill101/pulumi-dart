// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The participant property reference.
class ParticipantPropertyReferenceResponse {
  /// The source property that maps to the target property.
  final pulumi.Input<String> sourcePropertyName;
  /// The target property that maps to the source property.
  final pulumi.Input<String> targetPropertyName;

  /// Creates a new [ParticipantPropertyReferenceResponse].
  /// [sourcePropertyName] The source property that maps to the target property.
  /// [targetPropertyName] The target property that maps to the source property.
  const ParticipantPropertyReferenceResponse({
    required this.sourcePropertyName,
    required this.targetPropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory ParticipantPropertyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ParticipantPropertyReferenceResponse(
      sourcePropertyName: pulumi.Input.fromValue(map['sourcePropertyName'] as String),
      targetPropertyName: pulumi.Input.fromValue(map['targetPropertyName'] as String),
    );
  }
}

