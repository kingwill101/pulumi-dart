// ignore_for_file: unused_element, unnecessary_cast

class ServiceAttributesEnvironment {
  /// Environment type.
  /// Possible values are: `PRODUCTION`, `STAGING`, `TEST`, `DEVELOPMENT`.
  final String type;

  ServiceAttributesEnvironment({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory ServiceAttributesEnvironment.fromMap(Map<String, dynamic> map) {
    return ServiceAttributesEnvironment(
      type: map['type'] as String,
    );
  }
}
