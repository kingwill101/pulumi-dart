// ignore_for_file: unused_element, unnecessary_cast

/// Table view specification.
class GoogleCloudDatacatalogV1ViewSpecResponse {
  /// The query that defines the table view.
  final String viewQuery;

  /// Creates a new [GoogleCloudDatacatalogV1ViewSpecResponse].
  /// [viewQuery] The query that defines the table view.
  GoogleCloudDatacatalogV1ViewSpecResponse({required this.viewQuery});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'viewQuery': viewQuery};
  }

  factory GoogleCloudDatacatalogV1ViewSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1ViewSpecResponse(
      viewQuery: map['viewQuery'] as String,
    );
  }
}
