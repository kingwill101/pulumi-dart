import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_conformance_pack_input_parameter/organization_conformance_pack_input_parameter.dart';
import 'organization_conformance_pack_args.dart';

/// Manages a Config Organization Conformance Pack. More information can be found in the [Managing Conformance Packs Across all Accounts in Your Organization](https://docs.aws.amazon.com/config/latest/developerguide/conformance-pack-organization-apis.html) and [AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html) documentation. Example conformance pack templates may be found in the [AWS Config Rules Repository](https://github.com/awslabs/aws-config-rules/tree/master/aws-config-conformance-packs).
///
/// > **NOTE:** This resource must be created in the Organization master account or a delegated administrator account, and the Organization must have all features enabled. Every Organization account except those configured in the `excluded_accounts` argument must have a Configuration Recorder with proper IAM permissions before the Organization Conformance Pack will successfully create or update. See also the `aws.cfg.Recorder` resource.
///
/// ## Example Usage
///
/// ### Using Template Body
///
///
///
/// ### Using Template S3 URI
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Config Organization Conformance Packs using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/organizationConformancePack:OrganizationConformancePack example example
/// ```
class OrganizationConformancePack extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the organization conformance pack.
  late final pulumi.Output<String> arn;

  /// Amazon S3 bucket where AWS Config stores conformance pack templates. Delivery bucket must begin with `awsconfigconforms` prefix. Maximum length of 63.
  late final pulumi.Output<String?> deliveryS3Bucket;

  /// The prefix for the Amazon S3 bucket. Maximum length of 1024.
  late final pulumi.Output<String?> deliveryS3KeyPrefix;

  /// Set of AWS accounts to be excluded from an organization conformance pack while deploying a conformance pack. Maximum of 1000 accounts.
  late final pulumi.Output<List<String>?> excludedAccounts;

  /// Set of configuration blocks describing input parameters passed to the conformance pack template. Documented below. When configured, the parameters must also be included in the `template_body` or in the template stored in Amazon S3 if using `template_s3_uri`.
  late final pulumi.Output<List<OrganizationConformancePackInputParameter>?>
      inputParameters;

  /// The name of the organization conformance pack. Must begin with a letter and contain from 1 to 128 alphanumeric characters and hyphens.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A string containing full conformance pack template body. Maximum length of 51200. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> templateBody;

  /// Location of file, e.g., `s3://bucketname/prefix`, containing the template body. The uri must point to the conformance pack template that is located in an Amazon S3 bucket in the same region as the conformance pack. Maximum length of 1024. Drift detection is not possible with this argument.
  late final pulumi.Output<String?> templateS3Uri;

  OrganizationConformancePack(
    String name, {
    OrganizationConformancePackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/organizationConformancePack:OrganizationConformancePack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.deliveryS3Bucket = registerOutput<String?>('deliveryS3Bucket');
    this.deliveryS3KeyPrefix = registerOutput<String?>('deliveryS3KeyPrefix');
    this.excludedAccounts = registerOutput<List<String>?>('excludedAccounts');
    this.inputParameters =
        registerOutput<List<OrganizationConformancePackInputParameter>?>(
            'inputParameters');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.templateBody = registerOutput<String?>('templateBody');
    this.templateS3Uri = registerOutput<String?>('templateS3Uri');
  }
}
