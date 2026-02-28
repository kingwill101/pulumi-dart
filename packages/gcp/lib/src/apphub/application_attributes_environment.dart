// ignore_for_file: unused_element, unnecessary_cast


class ApplicationAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final String type;

  /// Creates a new [ApplicationAttributesEnvironment].
  /// [type] Environment type.
  ApplicationAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ApplicationAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesEnvironment(
      type: map['type'] as String,
    );
  }
}

