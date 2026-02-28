// ignore_for_file: unused_element, unnecessary_cast

/// Cloud Healthcare API resource.
class CloudHealthcareSourceResponse {
  /// Full path of a Cloud Healthcare API resource.
  final String name;

  /// Creates a new [CloudHealthcareSourceResponse].
  /// [name] Full path of a Cloud Healthcare API resource.
  CloudHealthcareSourceResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory CloudHealthcareSourceResponse.fromMap(Map<String, dynamic> map) {
    return CloudHealthcareSourceResponse(
      name: map['name'] as String,
    );
  }
}
