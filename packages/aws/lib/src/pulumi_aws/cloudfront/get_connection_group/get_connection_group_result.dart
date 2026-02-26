// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getConnectionGroup.
class GetConnectionGroupResult {
  /// ID of the anycast IP list associated with this connection group, if any.
  final String anycastIpListId;

  /// ARN (Amazon Resource Name) for the connection group.
  final String arn;

  /// Whether the connection group is enabled.
  final bool enabled;

  /// Current version of the connection group's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String etag;
  final String id;
  final bool ipv6Enabled;

  /// Whether the connection group is the default connection group for the distribution tenants.
  final bool isDefault;

  /// Date and time the connection group was last modified.
  final String lastModifiedTime;

  /// name of the connection group.
  final String name;
  final String routingEndpoint;

  /// Current status of the connection group. `Deployed` if the
  /// connection group's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String status;
  final Map<String, String> tags;

  GetConnectionGroupResult({
    required this.anycastIpListId,
    required this.arn,
    required this.enabled,
    required this.etag,
    required this.id,
    required this.ipv6Enabled,
    required this.isDefault,
    required this.lastModifiedTime,
    required this.name,
    required this.routingEndpoint,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['anycastIpListId'] = anycastIpListId;
    map['arn'] = arn;
    map['enabled'] = enabled;
    map['etag'] = etag;
    map['id'] = id;
    map['ipv6Enabled'] = ipv6Enabled;
    map['isDefault'] = isDefault;
    map['lastModifiedTime'] = lastModifiedTime;
    map['name'] = name;
    map['routingEndpoint'] = routingEndpoint;
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetConnectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionGroupResult(
      anycastIpListId: map['anycastIpListId'] as String,
      arn: map['arn'] as String,
      enabled: map['enabled'] as bool,
      etag: map['etag'] as String,
      id: map['id'] as String,
      ipv6Enabled: map['ipv6Enabled'] as bool,
      isDefault: map['isDefault'] as bool,
      lastModifiedTime: map['lastModifiedTime'] as String,
      name: map['name'] as String,
      routingEndpoint: map['routingEndpoint'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
