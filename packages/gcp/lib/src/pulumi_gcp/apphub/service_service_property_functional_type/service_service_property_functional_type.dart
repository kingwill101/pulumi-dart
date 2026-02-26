// ignore_for_file: unused_element, unnecessary_cast

class ServiceServicePropertyFunctionalType {
  /// (Output)
  /// Output only. The registration type of a service.
  final String? type;

  ServiceServicePropertyFunctionalType({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceServicePropertyFunctionalType.fromMap(
      Map<String, dynamic> map) {
    return ServiceServicePropertyFunctionalType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
