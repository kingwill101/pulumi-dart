// ignore_for_file: unused_element, unnecessary_cast

/// Map property value. Represents a structured entries of key value pairs, consisting of field names which map to dynamically typed values.
class GoogleCloudContentwarehouseV1MapProperty {
  /// Unordered map of dynamically typed values.
  final Map<String, String>? fields;

  /// Creates a new [GoogleCloudContentwarehouseV1MapProperty].
  /// [fields] Unordered map of dynamically typed values.
  GoogleCloudContentwarehouseV1MapProperty({
    this.fields,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fieldsValue = fields;
    if (fieldsValue != null) {
      map['fields'] = fieldsValue;
    }
    return map;
  }

  factory GoogleCloudContentwarehouseV1MapProperty.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1MapProperty(
      fields: map['fields'] == null
          ? null
          : (map['fields'] as Map).cast<String, String>(),
    );
  }
}
