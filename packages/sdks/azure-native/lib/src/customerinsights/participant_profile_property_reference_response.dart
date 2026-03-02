// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The participant profile property reference.
class ParticipantProfilePropertyReferenceResponse {
  /// The source interaction property that maps to the target profile property.
  final pulumi.Input<String> interactionPropertyName;
  /// The target profile property that maps to the source interaction property.
  final pulumi.Input<String> profilePropertyName;

  /// Creates a new [ParticipantProfilePropertyReferenceResponse].
  /// [interactionPropertyName] The source interaction property that maps to the target profile property.
  /// [profilePropertyName] The target profile property that maps to the source interaction property.
  ParticipantProfilePropertyReferenceResponse({
    required this.interactionPropertyName,
    required this.profilePropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactionPropertyName': interactionPropertyName,
      'profilePropertyName': profilePropertyName,
    };
  }

  factory ParticipantProfilePropertyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ParticipantProfilePropertyReferenceResponse(
      interactionPropertyName: (map['interactionPropertyName'] as String).input(),
      profilePropertyName: (map['profilePropertyName'] as String).input(),
    );
  }
}

