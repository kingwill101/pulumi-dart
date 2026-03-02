// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_resource_resource_args_doc}
/// The set of arguments for Resource.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_resource_resource_args_doc}
class ResourceArgs {
  /// Amazon Resource Name (ARN) of the resource.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> arn;
  /// Flag to enable AWS LakeFormation hybrid access permission mode.
  final pulumi.Input<bool>? hybridAccessEnabled;
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

  /// Creates a new [ResourceArgs].
  /// [arn] Amazon Resource Name (ARN) of the resource.
  /// [hybridAccessEnabled] Flag to enable AWS LakeFormation hybrid access permission mode.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] Role that has read/write access to the resource.
  /// [useServiceLinkedRole] Designates an AWS Identity and Access Management (IAM) service-linked role by registering this role with the Data Catalog.
  /// [withFederation] Whether or not the resource is a federated resource. Set to true when registering AWS Glue connections for federated catalog functionality.
  /// [withPrivilegedAccess] Boolean to grant the calling principal the permissions to perform all supported Lake Formation operations on the registered data location.
  ResourceArgs({
    required this.arn,
    this.hybridAccessEnabled,
    this.region,
    this.roleArn,
    this.useServiceLinkedRole,
    this.withFederation,
    this.withPrivilegedAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'hybridAccessEnabled': ?hybridAccessEnabled,
      'region': ?region,
      'roleArn': ?roleArn,
      'useServiceLinkedRole': ?useServiceLinkedRole,
      'withFederation': ?withFederation,
      'withPrivilegedAccess': ?withPrivilegedAccess,
    };
  }

  factory ResourceArgs.fromMap(Map<String, dynamic> map) {
    return ResourceArgs(
      arn: (map['arn'] as String).input(),
      hybridAccessEnabled: map['hybridAccessEnabled'] == null ? null : ((map['hybridAccessEnabled'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      roleArn: map['roleArn'] == null ? null : ((map['roleArn'] as String).input()).input(),
      useServiceLinkedRole: map['useServiceLinkedRole'] == null ? null : ((map['useServiceLinkedRole'] as bool).input()).input(),
      withFederation: map['withFederation'] == null ? null : ((map['withFederation'] as bool).input()).input(),
      withPrivilegedAccess: map['withPrivilegedAccess'] == null ? null : ((map['withPrivilegedAccess'] as bool).input()).input(),
    );
  }
}

