import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_artifact_args.dart';

/// Manages a Service Catalog Provisioning Artifact for a specified product.
///
/// > A "provisioning artifact" is also referred to as a "version."
///
/// > **NOTE:** You cannot create a provisioning artifact for a product that was shared with you.
///
/// > **NOTE:** The user or role that use this resource must have the `cloudformation:GetTemplate` IAM policy permission. This policy permission is required when using the `template_physical_id` argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.ProvisioningArtifact` using the provisioning artifact ID and product ID separated by a colon. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/provisioningArtifact:ProvisioningArtifact example pa-ij2b6lusy6dec:prod-el3an0rma3
/// ```
class ProvisioningArtifact extends pulumi.CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). The default value is `en`.
  late final pulumi.Output<String?> acceptLanguage;

  /// Whether the product version is active. Inactive provisioning artifacts are invisible to end users. End users cannot launch or update a provisioned product from an inactive provisioning artifact. Default is `true`.
  late final pulumi.Output<bool?> active;

  /// Time when the provisioning artifact was created.
  late final pulumi.Output<String> createdTime;

  /// Description of the provisioning artifact (i.e., version), including how it differs from the previous provisioning artifact.
  late final pulumi.Output<String> description;

  /// Whether AWS Service Catalog stops validating the specified provisioning artifact template even if it is invalid.
  late final pulumi.Output<bool?> disableTemplateValidation;

  /// Information set by the administrator to provide guidance to end users about which provisioning artifacts to use. Valid values are `DEFAULT` and `DEPRECATED`. The default is `DEFAULT`. Users are able to make updates to a provisioned product of a deprecated version but cannot launch new provisioned products using a deprecated version.
  late final pulumi.Output<String?> guidance;

  /// Name of the provisioning artifact (for example, `v1`, `v2beta`). No spaces are allowed.
  late final pulumi.Output<String> name;

  /// Identifier of the product.
  late final pulumi.Output<String> productId;

  /// Provisioning artifact identifier.
  late final pulumi.Output<String> provisioningArtifactId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Template source as the physical ID of the resource that contains the template. Currently only supports CloudFormation stack ARN. Specify the physical ID as `arn:[partition]:cloudformation:[region]:[account ID]:stack/[stack name]/[resource ID]`.
  late final pulumi.Output<String?> templatePhysicalId;

  /// Template source as URL of the CloudFormation template in Amazon S3.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String?> templateUrl;

  /// Type of provisioning artifact. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_ProvisioningArtifactProperties.html) for valid list of values.
  late final pulumi.Output<String?> type;

  ProvisioningArtifact(
    String name, {
    ProvisioningArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/provisioningArtifact:ProvisioningArtifact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.active = registerOutput<bool?>('active');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.disableTemplateValidation =
        registerOutput<bool?>('disableTemplateValidation');
    this.guidance = registerOutput<String?>('guidance');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.provisioningArtifactId =
        registerOutput<String>('provisioningArtifactId');
    this.region = registerOutput<String>('region');
    this.templatePhysicalId = registerOutput<String?>('templatePhysicalId');
    this.templateUrl = registerOutput<String?>('templateUrl');
    this.type = registerOutput<String?>('type');
  }
}
