import 'package:pulumi/pulumi.dart' as pulumi;
import '../domain_default_space_settings/domain_default_space_settings.dart';
import '../domain_default_user_settings/domain_default_user_settings.dart';
import '../domain_domain_settings/domain_domain_settings.dart';
import '../domain_retention_policy/domain_retention_policy.dart';
import 'domain_sagemaker_args.dart';

/// Provides a SageMaker AI Domain resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ### Using Custom Images
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Domains using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/domain:Domain test_domain d-8jgsjtilstu8
/// ```
class DomainSagemaker extends pulumi.CustomResource {
  /// Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  late final pulumi.Output<String?> appNetworkAccessType;

  /// The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  late final pulumi.Output<String?> appSecurityGroupManagement;

  /// The Amazon Resource Name (ARN) assigned by AWS to this Domain.
  late final pulumi.Output<String> arn;

  /// The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  late final pulumi.Output<String> authMode;

  /// The default space settings. See `default_space_settings` Block below.
  late final pulumi.Output<DomainDefaultSpaceSettings?> defaultSpaceSettings;

  /// The default user settings. See `default_user_settings` Block below.
  late final pulumi.Output<DomainDefaultUserSettings> defaultUserSettings;

  /// The domain name.
  late final pulumi.Output<String> domainName;

  /// The domain settings. See `domain_settings` Block below.
  late final pulumi.Output<DomainDomainSettings?> domainSettings;

  /// The ID of the Amazon Elastic File System (EFS) managed by this Domain.
  late final pulumi.Output<String> homeEfsFileSystemId;

  /// The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  late final pulumi.Output<String?> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  late final pulumi.Output<DomainRetentionPolicy?> retentionPolicy;

  /// The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app.
  late final pulumi.Output<String> securityGroupIdForDomainBoundary;

  /// The ARN of the application managed by SageMaker AI in IAM Identity Center. This value is only returned for domains created after September 19, 2023.
  late final pulumi.Output<String> singleSignOnApplicationArn;

  /// The SSO managed application instance ID.
  late final pulumi.Output<String> singleSignOnManagedApplicationInstanceId;

  /// The VPC subnets that Studio uses for communication.
  late final pulumi.Output<List<String>> subnetIds;

  /// Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  late final pulumi.Output<String?> tagPropagation;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The domain's URL.
  late final pulumi.Output<String> url;

  /// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  DomainSagemaker(
    String name, {
    DomainSagemakerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appNetworkAccessType = registerOutput<String?>('appNetworkAccessType');
    this.appSecurityGroupManagement =
        registerOutput<String?>('appSecurityGroupManagement');
    this.arn = registerOutput<String>('arn');
    this.authMode = registerOutput<String>('authMode');
    this.defaultSpaceSettings =
        registerOutput<DomainDefaultSpaceSettings?>('defaultSpaceSettings');
    this.defaultUserSettings =
        registerOutput<DomainDefaultUserSettings>('defaultUserSettings');
    this.domainName = registerOutput<String>('domainName');
    this.domainSettings =
        registerOutput<DomainDomainSettings?>('domainSettings');
    this.homeEfsFileSystemId = registerOutput<String>('homeEfsFileSystemId');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.retentionPolicy =
        registerOutput<DomainRetentionPolicy?>('retentionPolicy');
    this.securityGroupIdForDomainBoundary =
        registerOutput<String>('securityGroupIdForDomainBoundary');
    this.singleSignOnApplicationArn =
        registerOutput<String>('singleSignOnApplicationArn');
    this.singleSignOnManagedApplicationInstanceId =
        registerOutput<String>('singleSignOnManagedApplicationInstanceId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tagPropagation = registerOutput<String?>('tagPropagation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
