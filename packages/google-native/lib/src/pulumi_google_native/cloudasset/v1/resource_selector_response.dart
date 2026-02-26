// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the resource to analyze for access policies, which may be set directly on the resource, or on ancestors such as organizations, folders or projects.
class ResourceSelectorResponse {
  /// The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of a resource of [supported resource types](https://cloud.google.com/asset-inventory/docs/supported-asset-types#analyzable_asset_types).
  final String fullResourceName;

  ResourceSelectorResponse({
    required this.fullResourceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fullResourceName'] = fullResourceName;
    return map;
  }

  factory ResourceSelectorResponse.fromMap(Map<String, dynamic> map) {
    return ResourceSelectorResponse(
      fullResourceName: map['fullResourceName'] as String,
    );
  }
}
