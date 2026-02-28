// ignore_for_file: unused_element, unnecessary_cast

/// Defines a query on a resource.
class DynamicGroupQueryResponse {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final String query;

  /// Resource type for the Dynamic Group Query
  final String resourceType;

  /// Creates a new [DynamicGroupQueryResponse].
  /// [query] Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  /// [resourceType] Resource type for the Dynamic Group Query
  DynamicGroupQueryResponse({
    required this.query,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['query'] = query;
    map['resourceType'] = resourceType;
    return map;
  }

  factory DynamicGroupQueryResponse.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQueryResponse(
      query: map['query'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
