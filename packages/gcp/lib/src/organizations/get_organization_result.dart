// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getOrganization.
class GetOrganizationResult {
  /// Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  final String createTime;

  /// The Google for Work customer ID of the Organization.
  final String directoryCustomerId;
  final String domain;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The Organization's current lifecycle state.
  final String lifecycleState;

  /// The resource name of the Organization in the form `organizations/{organization_id}`.
  final String name;

  /// The Organization ID.
  final String orgId;
  final String? organization;

  /// Creates a new [GetOrganizationResult].
  /// [createTime] Timestamp when the Organization was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds. Example: "2014-10-02T15:01:23.045123456Z".
  /// [directoryCustomerId] The Google for Work customer ID of the Organization.
  /// [domain] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lifecycleState] The Organization's current lifecycle state.
  /// [name] The resource name of the Organization in the form `organizations/{organization_id}`.
  /// [orgId] The Organization ID.
  /// [organization] Optional.
  GetOrganizationResult({
    required this.createTime,
    required this.directoryCustomerId,
    required this.domain,
    required this.id,
    required this.lifecycleState,
    required this.name,
    required this.orgId,
    this.organization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['directoryCustomerId'] = directoryCustomerId;
    map['domain'] = domain;
    map['id'] = id;
    map['lifecycleState'] = lifecycleState;
    map['name'] = name;
    map['orgId'] = orgId;
    final organizationValue = organization;
    if (organizationValue != null) {
      map['organization'] = organizationValue;
    }
    return map;
  }

  factory GetOrganizationResult.fromMap(Map<String, dynamic> map) {
    return GetOrganizationResult(
      createTime: map['createTime'] as String,
      directoryCustomerId: map['directoryCustomerId'] as String,
      domain: map['domain'] as String,
      id: map['id'] as String,
      lifecycleState: map['lifecycleState'] as String,
      name: map['name'] as String,
      orgId: map['orgId'] as String,
      organization:
          map['organization'] == null ? null : map['organization'] as String,
    );
  }
}
