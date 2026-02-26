// ignore_for_file: unused_element, unnecessary_cast

/// Map property value. Represents a structured entries of key value pairs, consisting of field names which map to dynamically typed values.
class GoogleCloudContentwarehouseV1MapPropertyResponse {
  /// Unordered map of dynamically typed values.
  final Map<String, String> fields;

  GoogleCloudContentwarehouseV1MapPropertyResponse({
    required this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fields'] = fields;
    return map;
  }

  factory GoogleCloudContentwarehouseV1MapPropertyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1MapPropertyResponse(
      fields: (map['fields'] as Map).cast<String, String>(),
    );
  }
}
