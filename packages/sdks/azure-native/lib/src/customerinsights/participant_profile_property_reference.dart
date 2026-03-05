// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The participant profile property reference.
class ParticipantProfilePropertyReference {
  /// The source interaction property that maps to the target profile property.
  final pulumi.Input<String> interactionPropertyName;
  /// The target profile property that maps to the source interaction property.
  final pulumi.Input<String> profilePropertyName;

  /// Creates a new [ParticipantProfilePropertyReference].
  /// [interactionPropertyName] The source interaction property that maps to the target profile property.
  /// [profilePropertyName] The target profile property that maps to the source interaction property.
  ParticipantProfilePropertyReference({
    required this.interactionPropertyName,
    required this.profilePropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionPropertyName': interactionPropertyName,
      'profilePropertyName': profilePropertyName,
    };
  }

  factory ParticipantProfilePropertyReference.fromMap(Map<String, dynamic> map) {
    return ParticipantProfilePropertyReference(
      interactionPropertyName: pulumi.Input.fromValue(map['interactionPropertyName'] as String),
      profilePropertyName: pulumi.Input.fromValue(map['profilePropertyName'] as String),
    );
  }
}

