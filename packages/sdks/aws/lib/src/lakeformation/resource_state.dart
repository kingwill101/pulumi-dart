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
  /// > **NOTE:** AWS does not support registering an S3 location with an IAM role and subsequently updating the S3 location registration to a service-linked role.
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
  ResourceState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? hybridAccessEnabled,
    pulumi.Output<String>? lastModified,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<bool>? useServiceLinkedRole,
    pulumi.Output<bool>? withFederation,
    pulumi.Output<bool>? withPrivilegedAccess,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      hybridAccessEnabled = pulumi.Input.asOptionalInput<bool>(hybridAccessEnabled),
      lastModified = pulumi.Input.asOptionalInput<String>(lastModified),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      useServiceLinkedRole = pulumi.Input.asOptionalInput<bool>(useServiceLinkedRole),
      withFederation = pulumi.Input.asOptionalInput<bool>(withFederation),
      withPrivilegedAccess = pulumi.Input.asOptionalInput<bool>(withPrivilegedAccess);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      hybridAccessEnabled: map['hybridAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['hybridAccessEnabled'] as bool),
      lastModified: map['lastModified'] == null ? null : pulumi.Output.create<String>(map['lastModified'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      useServiceLinkedRole: map['useServiceLinkedRole'] == null ? null : pulumi.Output.create<bool>(map['useServiceLinkedRole'] as bool),
      withFederation: map['withFederation'] == null ? null : pulumi.Output.create<bool>(map['withFederation'] as bool),
      withPrivilegedAccess: map['withPrivilegedAccess'] == null ? null : pulumi.Output.create<bool>(map['withPrivilegedAccess'] as bool),
    );
  }
}

