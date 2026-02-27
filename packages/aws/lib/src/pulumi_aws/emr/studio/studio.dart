import 'package:pulumi/pulumi.dart';
import 'studio_args.dart';

/// Provides an Elastic MapReduce Studio.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EMR studios using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:emr/studio:Studio studio es-123456ABCDEF
/// ```
class Studio extends CustomResource {
  /// ARN of the studio.
  late final Output<String> arn;

  /// Specifies whether the Studio authenticates users using IAM or Amazon Web Services SSO. Valid values are `SSO` or `IAM`.
  late final Output<String> authMode;

  /// The Amazon S3 location to back up Amazon EMR Studio Workspaces and notebook files.
  late final Output<String> defaultS3Location;

  /// A detailed description of the Amazon EMR Studio.
  late final Output<String?> description;

  /// The AWS KMS key identifier (ARN) used to encrypt Amazon EMR Studio workspace and notebook files when backed up to Amazon S3.
  late final Output<String?> encryptionKeyArn;

  /// The ID of the Amazon EMR Studio Engine security group. The Engine security group allows inbound network traffic from the Workspace security group, and it must be in the same VPC specified by `vpc_id`.
  late final Output<String> engineSecurityGroupId;

  /// The authentication endpoint of your identity provider (IdP). Specify this value when you use IAM authentication and want to let federated users log in to a Studio with the Studio URL and credentials from your IdP. Amazon EMR Studio redirects users to this endpoint to enter credentials.
  late final Output<String?> idpAuthUrl;

  /// The name that your identity provider (IdP) uses for its RelayState parameter. For example, RelayState or TargetSource. Specify this value when you use IAM authentication and want to let federated users log in to a Studio using the Studio URL. The RelayState parameter differs by IdP.
  late final Output<String?> idpRelayStateParameterName;

  /// A descriptive name for the Amazon EMR Studio.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The IAM role that the Amazon EMR Studio assumes. The service role provides a way for Amazon EMR Studio to interoperate with other Amazon Web Services services.
  late final Output<String> serviceRole;

  /// A list of subnet IDs to associate with the Amazon EMR Studio. A Studio can have a maximum of 5 subnets. The subnets must belong to the VPC specified by `vpc_id`. Studio users can create a Workspace in any of the specified subnets.
  late final Output<List<String>> subnetIds;

  /// list of tags to apply to the EMR Cluster. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The unique access URL of the Amazon EMR Studio.
  late final Output<String> url;

  /// The IAM user role that users and groups assume when logged in to an Amazon EMR Studio. Only specify a User Role when you use Amazon Web Services SSO authentication. The permissions attached to the User Role can be scoped down for each user or group using session policies.
  late final Output<String?> userRole;

  /// The ID of the Amazon Virtual Private Cloud (Amazon VPC) to associate with the Studio.
  late final Output<String> vpcId;

  /// The ID of the Amazon EMR Studio Workspace security group. The Workspace security group allows outbound network traffic to resources in the Engine security group, and it must be in the same VPC specified by `vpc_id`.
  ///
  /// The following arguments are optional:
  late final Output<String> workspaceSecurityGroupId;

  Studio(
    String name, {
    StudioArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:emr/studio:Studio',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authMode = registerOutput<String>('authMode');
    this.defaultS3Location = registerOutput<String>('defaultS3Location');
    this.description = registerOutput<String?>('description');
    this.encryptionKeyArn = registerOutput<String?>('encryptionKeyArn');
    this.engineSecurityGroupId =
        registerOutput<String>('engineSecurityGroupId');
    this.idpAuthUrl = registerOutput<String?>('idpAuthUrl');
    this.idpRelayStateParameterName =
        registerOutput<String?>('idpRelayStateParameterName');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.serviceRole = registerOutput<String>('serviceRole');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.userRole = registerOutput<String?>('userRole');
    this.vpcId = registerOutput<String>('vpcId');
    this.workspaceSecurityGroupId =
        registerOutput<String>('workspaceSecurityGroupId');
  }
}
