// ignore_for_file: unused_element, unnecessary_cast

/// The specification for fields to include or exclude in data profile scan.
class GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse {
  /// Optional. Expected input is a list of fully qualified names of fields as in the schema.Only top-level field names for nested fields are supported. For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  final List<String> fieldNames;

  /// Creates a new [GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse].
  /// [fieldNames] Optional. Expected input is a list of fully qualified names of fields as in the schema.Only top-level field names for nested fields are supported. For instance, if 'x' is of nested field type, listing 'x' is supported but 'x.y.z' is not supported. Here 'y' and 'y.z' are nested fields of 'x'.
  GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse({
    required this.fieldNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'fieldNames': fieldNames};
  }

  factory GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDataplexV1DataProfileSpecSelectedFieldsResponse(
      fieldNames: (map['fieldNames'] as List).cast<String>(),
    );
  }
}
