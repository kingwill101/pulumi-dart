// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emr_studio_studio_args_doc}
/// The set of arguments for Studio.
/// {@endtemplate}
/// {@macro pulumi_emr_studio_studio_args_doc}
class StudioArgs {
  /// Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  final pulumi.Input<String> authMode;
  /// The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  final pulumi.Input<String> defaultS3Location;
  /// A detailed description of the Amazon EMR Studio.
  final pulumi.Input<String>? description;
  /// The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  final pulumi.Input<String>? encryptionKeyArn;
  /// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by `vpc_id`.
  final pulumi.Input<String> engineSecurityGroupId;
  /// The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  final pulumi.Input<String>? idpAuthUrl;
  /// The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  final pulumi.Input<String>? idpRelayStateParameterName;
  /// A descriptive name for the Amazon EMR Studio.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  final pulumi.Input<String> serviceRole;
  /// A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by `vpc_id`. Studio users can create a Workspace in any of the specified subnets.
  final pulumi.Input<List<String>> subnetIds;
  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  final pulumi.Input<String>? userRole;
  /// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  final pulumi.Input<String> vpcId;
  /// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> workspaceSecurityGroupId;

  /// Creates a new [StudioArgs].
  /// [authMode] Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  /// [defaultS3Location] The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  /// [description] A detailed description of the Amazon EMR Studio.
  /// [encryptionKeyArn] The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  /// [engineSecurityGroupId] The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by `vpc_id`.
  /// [idpAuthUrl] The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  /// [idpRelayStateParameterName] The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  /// [name] A descriptive name for the Amazon EMR Studio.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [serviceRole] The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  /// [subnetIds] A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by `vpc_id`. Studio users can create a Workspace in any of the specified subnets.
  /// [tags] list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [userRole] The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  /// [vpcId] The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  /// [workspaceSecurityGroupId] The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  StudioArgs({
    required String authMode,
    required String defaultS3Location,
    String? description,
    String? encryptionKeyArn,
    required String engineSecurityGroupId,
    String? idpAuthUrl,
    String? idpRelayStateParameterName,
    String? name,
    String? region,
    required String serviceRole,
    required List<String> subnetIds,
    Map<String, String>? tags,
    String? userRole,
    required String vpcId,
    required String workspaceSecurityGroupId,
  }) :
      authMode = pulumi.Input.asInput<String>(authMode),
      defaultS3Location = pulumi.Input.asInput<String>(defaultS3Location),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptionKeyArn = pulumi.Input.asOptionalInput<String>(encryptionKeyArn),
      engineSecurityGroupId = pulumi.Input.asInput<String>(engineSecurityGroupId),
      idpAuthUrl = pulumi.Input.asOptionalInput<String>(idpAuthUrl),
      idpRelayStateParameterName = pulumi.Input.asOptionalInput<String>(idpRelayStateParameterName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      serviceRole = pulumi.Input.asInput<String>(serviceRole),
      subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      userRole = pulumi.Input.asOptionalInput<String>(userRole),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      workspaceSecurityGroupId = pulumi.Input.asInput<String>(workspaceSecurityGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authMode': authMode,
      'defaultS3Location': defaultS3Location,
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'engineSecurityGroupId': engineSecurityGroupId,
      'idpAuthUrl': ?idpAuthUrl,
      'idpRelayStateParameterName': ?idpRelayStateParameterName,
      'name': ?name,
      'region': ?region,
      'serviceRole': serviceRole,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'userRole': ?userRole,
      'vpcId': vpcId,
      'workspaceSecurityGroupId': workspaceSecurityGroupId,
    };
  }

  factory StudioArgs.fromMap(Map<String, dynamic> map) {
    return StudioArgs(
      authMode: map['authMode'] as String,
      defaultS3Location: map['defaultS3Location'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      encryptionKeyArn: map['encryptionKeyArn'] == null ? null : map['encryptionKeyArn'] as String,
      engineSecurityGroupId: map['engineSecurityGroupId'] as String,
      idpAuthUrl: map['idpAuthUrl'] == null ? null : map['idpAuthUrl'] as String,
      idpRelayStateParameterName: map['idpRelayStateParameterName'] == null ? null : map['idpRelayStateParameterName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      serviceRole: map['serviceRole'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      userRole: map['userRole'] == null ? null : map['userRole'] as String,
      vpcId: map['vpcId'] as String,
      workspaceSecurityGroupId: map['workspaceSecurityGroupId'] as String,
    );
  }
}

