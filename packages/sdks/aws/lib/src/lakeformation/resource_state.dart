// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Resource resources.
class ResourceState {
  /// Amazon Resource Name (ARN) of the resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? arn;
  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  final pulumi.Input<bool>? hybridAccessEnabled;
  /// Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  final pulumi.Input<String>? lastModified;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Role that has read/write access to the resource.
  final pulumi.Input<String>? roleArn;
  /// Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  final pulumi.Input<bool>? useServiceLinkedRole;
  /// Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  final pulumi.Input<bool>? withFederation;
  /// Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  ///
  /// &gt; **NOTE:** AWS does not support registering an S3 location with an IAM role and subsequently updating the S3 location registration to a service-linked role.
  final pulumi.Input<bool>? withPrivilegedAccess;

  /// Creates a new [ResourceState].
  /// [arn] Amazon Resource Name (ARN) of the resource.
  /// [hybridAccessEnabled] Flag to enable AWS LakeFormation hybrid access permission mode.
  /// [lastModified] Date and time the resource was last modified in [RFC 3339 format](https://tools.ietf.org/html/rfc3339#section-5.8).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Role that has read/write access to the resource.
  /// [useServiceLinkedRole] Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  /// [withFederation] Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  /// [withPrivilegedAccess] Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  const ResourceState({
    this.arn,
    this.hybridAccessEnabled,
    this.lastModified,
    this.region,
    this.roleArn,
    this.useServiceLinkedRole,
    this.withFederation,
    this.withPrivilegedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'hybridAccessEnabled': ?hybridAccessEnabled,
      'lastModified': ?lastModified,
      'region': ?region,
      'roleArn': ?roleArn,
      'useServiceLinkedRole': ?useServiceLinkedRole,
      'withFederation': ?withFederation,
      'withPrivilegedAccess': ?withPrivilegedAccess,
    };
  }

  factory ResourceState.fromMap(Map<String, dynamic> map) {
    return ResourceState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hybridAccessEnabled: (() { final guardedValue = map['hybridAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lastModified: (() { final guardedValue = map['lastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useServiceLinkedRole: (() { final guardedValue = map['useServiceLinkedRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      withFederation: (() { final guardedValue = map['withFederation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      withPrivilegedAccess: (() { final guardedValue = map['withPrivilegedAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

