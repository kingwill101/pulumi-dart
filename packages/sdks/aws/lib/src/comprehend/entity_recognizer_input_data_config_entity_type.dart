// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerInputDataConfigEntityType {
  /// An entity type to be matched by the Entity Recognizer.
  /// Cannot contain a newline (`\n`), carriage return (`\r`), or tab (`\t`).
  final pulumi.Input<String> type;

  /// Creates a new [EntityRecognizerInputDataConfigEntityType].
  /// [type] An entity type to be matched by the Entity Recognizer.
  const EntityRecognizerInputDataConfigEntityType({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory EntityRecognizerInputDataConfigEntityType.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigEntityType(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
