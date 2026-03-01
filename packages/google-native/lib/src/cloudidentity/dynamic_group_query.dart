// ignore_for_file: unused_element, unnecessary_cast

import 'dynamic_group_query_resource_type.dart';

/// Defines a query on a resource.
class DynamicGroupQuery {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final String? query;

  /// Resource type for the Dynamic Group Query
  final DynamicGroupQueryResourceType? resourceType;

  /// Creates a new [DynamicGroupQuery].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Resource type for the Dynamic Group Query
  DynamicGroupQuery({this.query, this.resourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'query': ?query,
      'resourceType': ?resourceType == null ? null : resourceType!.value,
    };
  }

  factory DynamicGroupQuery.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQuery(
      query: map['query'] == null ? null : map['query'] as String,
      resourceType: map['resourceType'] == null
          ? null
          : DynamicGroupQueryResourceType.fromValue(
              map['resourceType'] as String,
            ),
    );
  }
}
