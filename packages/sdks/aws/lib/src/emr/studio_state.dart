// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Studio resources.
class StudioState {
  /// ARN of the studio.
  final pulumi.Input<String>? arn;
  /// Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  final pulumi.Input<String>? authMode;
  /// The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  final pulumi.Input<String>? defaultS3Location;
  /// A detailed description of the Amazon EMR Studio.
  final pulumi.Input<String>? description;
  /// The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  final pulumi.Input<String>? encryptionKeyArn;
  /// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by `vpc_id`.
  final pulumi.Input<String>? engineSecurityGroupId;
  /// The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  final pulumi.Input<String>? idpAuthUrl;
  /// The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  final pulumi.Input<String>? idpRelayStateParameterName;
  /// A descriptive name for the Amazon EMR Studio.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  final pulumi.Input<String>? serviceRole;
  /// A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by `vpc_id`. Studio users can create a Workspace in any of the specified subnets.
  final pulumi.Input<List<String>>? subnetIds;
  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The unique access URL of the Amazon EMR Studio.
  final pulumi.Input<String>? url;
  /// The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  final pulumi.Input<String>? userRole;
  /// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  final pulumi.Input<String>? vpcId;
  /// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? workspaceSecurityGroupId;

  /// Creates a new [StudioState].
  /// [arn] ARN of the studio.
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
  /// [tagsAll] Optional.
  /// [url] The unique access URL of the Amazon EMR Studio.
  /// [userRole] The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  /// [vpcId] The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  /// [workspaceSecurityGroupId] The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  StudioState({
    this.arn,
    this.authMode,
    this.defaultS3Location,
    this.description,
    this.encryptionKeyArn,
    this.engineSecurityGroupId,
    this.idpAuthUrl,
    this.idpRelayStateParameterName,
    this.name,
    this.region,
    this.serviceRole,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.url,
    this.userRole,
    this.vpcId,
    this.workspaceSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authMode': ?authMode,
      'defaultS3Location': ?defaultS3Location,
      'description': ?description,
      'encryptionKeyArn': ?encryptionKeyArn,
      'engineSecurityGroupId': ?engineSecurityGroupId,
      'idpAuthUrl': ?idpAuthUrl,
      'idpRelayStateParameterName': ?idpRelayStateParameterName,
      'name': ?name,
      'region': ?region,
      'serviceRole': ?serviceRole,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
      'userRole': ?userRole,
      'vpcId': ?vpcId,
      'workspaceSecurityGroupId': ?workspaceSecurityGroupId,
    };
  }

  factory StudioState.fromMap(Map<String, dynamic> map) {
    return StudioState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authMode: (() { final guardedValue = map['authMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultS3Location: (() { final guardedValue = map['defaultS3Location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyArn: (() { final guardedValue = map['encryptionKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineSecurityGroupId: (() { final guardedValue = map['engineSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpAuthUrl: (() { final guardedValue = map['idpAuthUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idpRelayStateParameterName: (() { final guardedValue = map['idpRelayStateParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceRole: (() { final guardedValue = map['serviceRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userRole: (() { final guardedValue = map['userRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceSecurityGroupId: (() { final guardedValue = map['workspaceSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

