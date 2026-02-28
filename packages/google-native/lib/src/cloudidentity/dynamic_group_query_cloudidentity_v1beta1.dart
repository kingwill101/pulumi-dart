// ignore_for_file: unused_element, unnecessary_cast

import 'dynamic_group_query_resource_type_cloudidentity_v1beta1.dart';

/// Defines a query on a resource.
class DynamicGroupQueryCloudidentityV1beta1 {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final String? query;
  final DynamicGroupQueryResourceTypeCloudidentityV1beta1? resourceType;

  /// Creates a new [DynamicGroupQueryCloudidentityV1beta1].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Optional.
  DynamicGroupQueryCloudidentityV1beta1({
    this.query,
    this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    final resourceTypeValue = resourceType;
    if (resourceTypeValue != null) {
      map['resourceType'] = resourceTypeValue.value;
    }
    return map;
  }

  factory DynamicGroupQueryCloudidentityV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DynamicGroupQueryCloudidentityV1beta1(
      query: map['query'] == null ? null : map['query'] as String,
      resourceType: map['resourceType'] == null
          ? null
          : DynamicGroupQueryResourceTypeCloudidentityV1beta1.fromValue(
              map['resourceType'] as String),
    );
  }
}
