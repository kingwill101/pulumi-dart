// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResource.
class GetResourceResult {
  final String? arn;
  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  final bool? hybridAccessEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String? lastModified;
  final String? region;
  /// Role that the resource was registered with.
  final String? roleArn;
  /// Whether the resource is a federated resource.
  final bool? withFederation;
  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  final bool? withPrivilegedAccess;

  /// Creates a new [GetResourceResult].
  /// [arn] Optional.
  /// [hybridAccessEnabled] Flag to enable AWS LakeFormation hybrid access permission mode.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [region] Optional.
  /// [roleArn] Role that the resource was registered with.
  /// [withFederation] Whether the resource is a federated resource.
  /// [withPrivilegedAccess] Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  const GetResourceResult({
    this.arn,
    this.hybridAccessEnabled,
    this.id,
    this.lastModified,
    this.region,
    this.roleArn,
    this.withFederation,
    this.withPrivilegedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hybridAccessEnabled': ?hybridAccessEnabled,
      'id': ?id,
      'lastModified': ?lastModified,
      'region': ?region,
      'roleArn': ?roleArn,
      'withFederation': ?withFederation,
      'withPrivilegedAccess': ?withPrivilegedAccess,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hybridAccessEnabled: (() { final guardedValue = map['hybridAccessEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      withFederation: (() { final guardedValue = map['withFederation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      withPrivilegedAccess: (() { final guardedValue = map['withPrivilegedAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
