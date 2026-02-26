// ignore_for_file: unused_element, unnecessary_cast

class ApplicationAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final String type;

  ApplicationAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ApplicationAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesEnvironment(
      type: map['type'] as String,
    );
  }
}
