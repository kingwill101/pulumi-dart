// ignore_for_file: unused_element, unnecessary_cast

/// Table view specification.
class GoogleCloudDatacatalogV1beta1ViewSpecResponse {
  /// The query that defines the table view.
  final String viewQuery;

  GoogleCloudDatacatalogV1beta1ViewSpecResponse({
    required this.viewQuery,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['viewQuery'] = viewQuery;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1ViewSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1ViewSpecResponse(
      viewQuery: map['viewQuery'] as String,
    );
  }
}
