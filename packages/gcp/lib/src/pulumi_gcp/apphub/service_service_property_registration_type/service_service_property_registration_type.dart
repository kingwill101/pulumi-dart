// ignore_for_file: unused_element, unnecessary_cast

class ServiceServicePropertyRegistrationType {
  /// (Output)
  /// Output only. The registration type of a service.
  final String? type;

  ServiceServicePropertyRegistrationType({
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

  factory ServiceServicePropertyRegistrationType.fromMap(
      Map<String, dynamic> map) {
    return ServiceServicePropertyRegistrationType(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
