// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Studio.
class StudioArgs {
  /// Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  final Input<String> authMode;

  /// The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  final Input<String> defaultS3Location;

  /// A detailed description of the Amazon EMR Studio.
  final Input<String>? description;

  /// The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  final Input<String>? encryptionKeyArn;

  /// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span>.
  final Input<String> engineSecurityGroupId;

  /// The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  final Input<String>? idpAuthUrl;

  /// The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  final Input<String>? idpRelayStateParameterName;

  /// A descriptive name for the Amazon EMR Studio.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  final Input<String> serviceRole;

  /// A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span>. Studio users can create a Workspace in any of the specified subnets.
  final Input<List<String>> subnetIds;

  /// list of tags to apply to the EMR Cluster. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  final Input<String>? userRole;

  /// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  final Input<String> vpcId;

  /// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span>.
  ///
  /// The following arguments are optional:
  final Input<String> workspaceSecurityGroupId;

  StudioArgs({
    required this.authMode,
    required this.defaultS3Location,
    this.description,
    this.encryptionKeyArn,
    required this.engineSecurityGroupId,
    this.idpAuthUrl,
    this.idpRelayStateParameterName,
    this.name,
    this.region,
    required this.serviceRole,
    required this.subnetIds,
    this.tags,
    this.userRole,
    required this.vpcId,
    required this.workspaceSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authMode'] = authMode;
    map['defaultS3Location'] = defaultS3Location;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final encryptionKeyArnValue = encryptionKeyArn;
    if (encryptionKeyArnValue != null) {
      map['encryptionKeyArn'] = encryptionKeyArnValue;
    }
    map['engineSecurityGroupId'] = engineSecurityGroupId;
    final idpAuthUrlValue = idpAuthUrl;
    if (idpAuthUrlValue != null) {
      map['idpAuthUrl'] = idpAuthUrlValue;
    }
    final idpRelayStateParameterNameValue = idpRelayStateParameterName;
    if (idpRelayStateParameterNameValue != null) {
      map['idpRelayStateParameterName'] = idpRelayStateParameterNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['serviceRole'] = serviceRole;
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final userRoleValue = userRole;
    if (userRoleValue != null) {
      map['userRole'] = userRoleValue;
    }
    map['vpcId'] = vpcId;
    map['workspaceSecurityGroupId'] = workspaceSecurityGroupId;
    return map;
  }

  factory StudioArgs.fromMap(Map<String, dynamic> map) {
    return StudioArgs(
      authMode: Input.asInput<String>(map['authMode']),
      defaultS3Location: Input.asInput<String>(map['defaultS3Location']),
      description: Input.asOptionalInput<String>(map['description']),
      encryptionKeyArn: Input.asOptionalInput<String>(map['encryptionKeyArn']),
      engineSecurityGroupId:
          Input.asInput<String>(map['engineSecurityGroupId']),
      idpAuthUrl: Input.asOptionalInput<String>(map['idpAuthUrl']),
      idpRelayStateParameterName:
          Input.asOptionalInput<String>(map['idpRelayStateParameterName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      serviceRole: Input.asInput<String>(map['serviceRole']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      userRole: Input.asOptionalInput<String>(map['userRole']),
      vpcId: Input.asInput<String>(map['vpcId']),
      workspaceSecurityGroupId:
          Input.asInput<String>(map['workspaceSecurityGroupId']),
    );
  }
}
