// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Healthcare API resource.
class CloudHealthcareSource {
  /// Full path of a Cloud Healthcare API resource.
  final String? name;

  CloudHealthcareSource({
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

  factory CloudHealthcareSource.fromMap(Map<String, dynamic> map) {
    return CloudHealthcareSource(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
