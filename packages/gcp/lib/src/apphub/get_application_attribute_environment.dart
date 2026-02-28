// ignore_for_file: unused_element, unnecessary_cast

class GetApplicationAttributeEnvironment {
  /// Environment type. Possible values: ["PRODUCTION", "STAGING", "TEST", "DEVELOPMENT"]
  final String type;

  /// Creates a new [GetApplicationAttributeEnvironment].
  /// [type] Environment type. Possible values: ["PRODUCTION", "STAGING", "TEST", "DEVELOPMENT"]
  GetApplicationAttributeEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetApplicationAttributeEnvironment.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttributeEnvironment(
      type: map['type'] as String,
    );
  }
}
