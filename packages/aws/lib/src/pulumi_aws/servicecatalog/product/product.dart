import 'package:pulumi/pulumi.dart';
import '../product_provisioning_artifact_parameters/product_provisioning_artifact_parameters.dart';
import 'product_args.dart';

/// Manages a Service Catalog Product.
///
/// > **NOTE:** The user or role that uses this resources must have the `cloudformation:GetTemplate` IAM policy permission. This policy permission is required when using the `template_physical_id` argument.
///
/// > A "provisioning artifact" is also referred to as a "version." A "distributor" is also referred to as a "vendor."
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.servicecatalog.Product` using the product ID. For example:
///
/// ```sh
/// $ pulumi import aws:servicecatalog/product:Product example prod-dnigbtea24ste
/// ```
class Product extends CustomResource {
  /// Language code. Valid values: `en` (English), `jp` (Japanese), `zh` (Chinese). Default value is `en`.
  late final Output<String?> acceptLanguage;

  /// ARN of the product.
  late final Output<String> arn;

  /// Time when the product was created.
  late final Output<String> createdTime;

  /// Description of the product.
  late final Output<String> description;

  /// Distributor (i.e., vendor) of the product.
  late final Output<String> distributor;

  /// Whether the product has a default path. If the product does not have a default path, call `ListLaunchPaths` to disambiguate between paths.  Otherwise, `ListLaunchPaths` is not required, and the output of ProductViewSummary can be used directly with `DescribeProvisioningParameters`.
  late final Output<bool> hasDefaultPath;

  /// Name of the product.
  late final Output<String> name;

  /// Owner of the product.
  late final Output<String> owner;

  /// Configuration block for provisioning artifact (i.e., version) parameters. See `provisioning_artifact_parameters` Block for details.
  late final Output<ProductProvisioningArtifactParameters>
      provisioningArtifactParameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Status of the product.
  late final Output<String> status;

  /// Support information about the product.
  late final Output<String> supportDescription;

  /// Contact email for product support.
  late final Output<String> supportEmail;

  /// Contact URL for product support.
  late final Output<String> supportUrl;

  /// Tags to apply to the product. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of product. See [AWS Docs](https://docs.aws.amazon.com/servicecatalog/latest/dg/API_CreateProduct.html#API_CreateProduct_RequestSyntax) for valid list of values.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  Product(
    String name, {
    ProductArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:servicecatalog/product:Product',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptLanguage = registerOutput<String?>('acceptLanguage');
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.distributor = registerOutput<String>('distributor');
    this.hasDefaultPath = registerOutput<bool>('hasDefaultPath');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.provisioningArtifactParameters =
        registerOutput<ProductProvisioningArtifactParameters>(
            'provisioningArtifactParameters');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.supportDescription = registerOutput<String>('supportDescription');
    this.supportEmail = registerOutput<String>('supportEmail');
    this.supportUrl = registerOutput<String>('supportUrl');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
