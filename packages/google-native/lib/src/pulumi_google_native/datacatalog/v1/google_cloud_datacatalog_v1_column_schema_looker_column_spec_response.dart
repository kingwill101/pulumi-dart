// ignore_for_file: unused_element, unnecessary_cast

/// Column info specific to Looker System.
class GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse {
  /// Looker specific column type of this column.
  final String type;

  GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1ColumnSchemaLookerColumnSpecResponse(
      type: map['type'] as String,
    );
  }
}
