// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getResource.
class GetResourceResult {
  final String arn;
  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  final bool hybridAccessEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final String lastModified;
  final String region;
  /// Role that the resource was registered with.
  final String roleArn;
  /// Whether the resource is a federated resource.
  final bool withFederation;
  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  final bool withPrivilegedAccess;

  /// Creates a new [GetResourceResult].
  /// [arn] Required.
  /// [hybridAccessEnabled] Flag to enable AWS LakeFormation hybrid access permission mode.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lastModified] Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [region] Required.
  /// [roleArn] Role that the resource was registered with.
  /// [withFederation] Whether the resource is a federated resource.
  /// [withPrivilegedAccess] Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  const GetResourceResult({
    required this.arn,
    required this.hybridAccessEnabled,
    required this.id,
    required this.lastModified,
    required this.region,
    required this.roleArn,
    required this.withFederation,
    required this.withPrivilegedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'hybridAccessEnabled': hybridAccessEnabled,
      'id': id,
      'lastModified': lastModified,
      'region': region,
      'roleArn': roleArn,
      'withFederation': withFederation,
      'withPrivilegedAccess': withPrivilegedAccess,
    };
  }

  factory GetResourceResult.fromMap(Map<String, dynamic> map) {
    return GetResourceResult(
      arn: map['arn'] as String,
      hybridAccessEnabled: map['hybridAccessEnabled'] as bool,
      id: map['id'] as String,
      lastModified: map['lastModified'] as String,
      region: map['region'] as String,
      roleArn: map['roleArn'] as String,
      withFederation: map['withFederation'] as bool,
      withPrivilegedAccess: map['withPrivilegedAccess'] as bool,
    );
  }
}

