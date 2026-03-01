// ignore_for_file: unused_element, unnecessary_cast


class GetProjectsProjectPropertiesTableLifecycle {
  /// Project type
  final String type;
  /// The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  final String value;

  /// Creates a new [GetProjectsProjectPropertiesTableLifecycle].
  /// [type] Project type
  /// [value] The value of the life cycle, in days. The value range is 1~37231, and the default value is 37231.
  GetProjectsProjectPropertiesTableLifecycle({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
      'value': value,
    };
  }

  factory GetProjectsProjectPropertiesTableLifecycle.fromMap(Map<String, dynamic> map) {
    return GetProjectsProjectPropertiesTableLifecycle(
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}

