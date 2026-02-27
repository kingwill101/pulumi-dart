// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Resource.
class ResourceLakeformationArgs {
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

  ResourceLakeformationArgs({
    required this.arn,
    this.hybridAccessEnabled,
    this.region,
    this.roleArn,
    this.useServiceLinkedRole,
    this.withFederation,
    this.withPrivilegedAccess,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final hybridAccessEnabledValue = hybridAccessEnabled;
    if (hybridAccessEnabledValue != null) {
      map['hybridAccessEnabled'] = hybridAccessEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    final useServiceLinkedRoleValue = useServiceLinkedRole;
    if (useServiceLinkedRoleValue != null) {
      map['useServiceLinkedRole'] = useServiceLinkedRoleValue;
    }
    final withFederationValue = withFederation;
    if (withFederationValue != null) {
      map['withFederation'] = withFederationValue;
    }
    final withPrivilegedAccessValue = withPrivilegedAccess;
    if (withPrivilegedAccessValue != null) {
      map['withPrivilegedAccess'] = withPrivilegedAccessValue;
    }
    return map;
  }

  factory ResourceLakeformationArgs.fromMap(Map<String, dynamic> map) {
    return ResourceLakeformationArgs(
      arn: pulumi.Input.asInput<String>(map['arn']),
      hybridAccessEnabled:
          pulumi.Input.asOptionalInput<bool>(map['hybridAccessEnabled']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asOptionalInput<String>(map['roleArn']),
      useServiceLinkedRole:
          pulumi.Input.asOptionalInput<bool>(map['useServiceLinkedRole']),
      withFederation: pulumi.Input.asOptionalInput<bool>(map['withFederation']),
      withPrivilegedAccess:
          pulumi.Input.asOptionalInput<bool>(map['withPrivilegedAccess']),
    );
  }
}
