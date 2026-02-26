// ignore_for_file: unused_element, unnecessary_cast

/// Defines a query on a resource.
class DynamicGroupQueryResponse2 {
  /// Query that determines the memberships of the dynamic group. Examples: All users with at least one `organizations.department` of engineering. `user.organizations.exists(org, org.department=='engineering')` All users with at least one location that has `area` of `foo` and `building_id` of `bar`. `user.locations.exists(loc, loc.area=='foo' && loc.building_id=='bar')` All users with any variation of the name John Doe (case-insensitive queries add `equalsIgnoreCase()` to the value being queried). `user.name.value.equalsIgnoreCase('jOhn DoE')`
  final String query;
  final String resourceType;

  DynamicGroupQueryResponse2({
    required this.query,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['query'] = query;
    map['resourceType'] = resourceType;
    return map;
  }

  factory DynamicGroupQueryResponse2.fromMap(Map<String, dynamic> map) {
    return DynamicGroupQueryResponse2(
      query: map['query'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}
