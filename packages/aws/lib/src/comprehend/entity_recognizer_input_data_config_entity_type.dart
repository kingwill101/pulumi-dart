// ignore_for_file: unused_element, unnecessary_cast

class EntityRecognizerInputDataConfigEntityType {
  /// An entity type to be matched by the Entity Recognizer.
  /// Cannot contain a newline (`\n`), carriage return (`\r`), or tab (`\t`).
  final String type;

  /// Creates a new [EntityRecognizerInputDataConfigEntityType].
  /// [type] An entity type to be matched by the Entity Recognizer.
  EntityRecognizerInputDataConfigEntityType({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory EntityRecognizerInputDataConfigEntityType.fromMap(
      Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigEntityType(
      type: map['type'] as String,
    );
  }
}
