// ignore_for_file: unused_element, unnecessary_cast


class GetListenerDefaultActionJwtValidationAdditionalClaim {
  final String format;
  final String name;
  final List<String> values;

  /// Creates a new [GetListenerDefaultActionJwtValidationAdditionalClaim].
  /// [format] Required.
  /// [name] Required.
  /// [values] Required.
  GetListenerDefaultActionJwtValidationAdditionalClaim({
    required this.format,
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'name': name,
      'values': values,
    };
  }

  factory GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidationAdditionalClaim(
      format: map['format'] as String,
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

