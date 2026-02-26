// ignore_for_file: unused_element, unnecessary_cast

class SaaSLocation {
  /// Name of location.
  final String? name;

  SaaSLocation({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory SaaSLocation.fromMap(Map<String, dynamic> map) {
    return SaaSLocation(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
