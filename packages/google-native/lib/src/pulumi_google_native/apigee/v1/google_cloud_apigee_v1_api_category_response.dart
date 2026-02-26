// ignore_for_file: unused_element, unnecessary_cast

/// `ApiCategory` represents an API category. [Catalog items](/apigee/docs/reference/apis/apigee/rest/v1/organizations.sites.apidocs) can be tagged with API categories; users viewing the API catalog in the portal will have the option to browse the catalog by category.
class GoogleCloudApigeeV1ApiCategoryResponse {
  /// Name of the category.
  final String name;

  /// Name of the portal.
  final String siteId;

  /// Time the category was last modified in milliseconds since epoch.
  final String updateTime;

  GoogleCloudApigeeV1ApiCategoryResponse({
    required this.name,
    required this.siteId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['siteId'] = siteId;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GoogleCloudApigeeV1ApiCategoryResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ApiCategoryResponse(
      name: map['name'] as String,
      siteId: map['siteId'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
