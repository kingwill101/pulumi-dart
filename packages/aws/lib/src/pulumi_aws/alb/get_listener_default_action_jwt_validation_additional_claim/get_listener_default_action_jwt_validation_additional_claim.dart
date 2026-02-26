// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionJwtValidationAdditionalClaim {
  final String format;
  final String name;
  final List<String> values;

  GetListenerDefaultActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['format'] = format;
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidationAdditionalClaim(
      format: map['format'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
