// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The participant property reference.
class ParticipantPropertyReference {
  /// The source property that maps to the target property.
  final pulumi.Input<String> sourcePropertyName;
  /// The target property that maps to the source property.
  final pulumi.Input<String> targetPropertyName;

  /// Creates a new [ParticipantPropertyReference].
  /// [sourcePropertyName] The source property that maps to the target property.
  /// [targetPropertyName] The target property that maps to the source property.
  ParticipantPropertyReference({
    required this.sourcePropertyName,
    required this.targetPropertyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourcePropertyName': sourcePropertyName,
      'targetPropertyName': targetPropertyName,
    };
  }

  factory ParticipantPropertyReference.fromMap(Map<String, dynamic> map) {
    return ParticipantPropertyReference(
      sourcePropertyName: (map['sourcePropertyName'] as String).input(),
      targetPropertyName: (map['targetPropertyName'] as String).input(),
    );
  }
}

