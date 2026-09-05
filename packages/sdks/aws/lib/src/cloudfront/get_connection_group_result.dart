// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnectionGroup.
class GetConnectionGroupResult {
  /// ID of the anycast IP list associated with this connection group, if any.
  final String? anycastIpListId;
  /// ARN for the connection group.
  final String? arn;
  /// Whether the connection group is enabled.
  final bool? enabled;
  /// Current version of the connection group's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String? etag;
  final String? id;
  final bool? ipv6Enabled;
  /// Whether the connection group is the default connection group for the distribution tenants.
  final bool? isDefault;
  /// Date and time the connection group was last modified.
  final String? lastModifiedTime;
  /// name of the connection group.
  final String? name;
  final String? routingEndpoint;
  /// Current status of the connection group. `Deployed` if the
  /// connection group's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetConnectionGroupResult].
  /// [anycastIpListId] ID of the anycast IP list associated with this connection group, if any.
  /// [arn] ARN for the connection group.
  /// [enabled] Whether the connection group is enabled.
  /// [etag] Current version of the connection group's information. For example:
  /// [id] Optional.
  /// [ipv6Enabled] Optional.
  /// [isDefault] Whether the connection group is the default connection group for the distribution tenants.
  /// [lastModifiedTime] Date and time the connection group was last modified.
  /// [name] name of the connection group.
  /// [routingEndpoint] Optional.
  /// [status] Current status of the connection group. `Deployed` if the
  /// [tags] Optional.
  const GetConnectionGroupResult({
    this.anycastIpListId,
    this.arn,
    this.enabled,
    this.etag,
    this.id,
    this.ipv6Enabled,
    this.isDefault,
    this.lastModifiedTime,
    this.name,
    this.routingEndpoint,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anycastIpListId': ?anycastIpListId,
      'arn': ?arn,
      'enabled': ?enabled,
      'etag': ?etag,
      'id': ?id,
      'ipv6Enabled': ?ipv6Enabled,
      'isDefault': ?isDefault,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'routingEndpoint': ?routingEndpoint,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetConnectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionGroupResult(
      anycastIpListId: (() { final guardedValue = map['anycastIpListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isDefault: (() { final guardedValue = map['isDefault']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      routingEndpoint: (() { final guardedValue = map['routingEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
