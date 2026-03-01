// ignore_for_file: unused_element, unnecessary_cast

/// String/text values.
class GoogleCloudContentwarehouseV1TextArrayResponse {
  /// List of text values.
  final List<String> values;

  /// Creates a new [GoogleCloudContentwarehouseV1TextArrayResponse].
  /// [values] List of text values.
  GoogleCloudContentwarehouseV1TextArrayResponse({required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'values': values};
  }

  factory GoogleCloudContentwarehouseV1TextArrayResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1TextArrayResponse(
      values: (map['values'] as List).cast<String>(),
    );
  }
}
