import 'package:pulumi/pulumi.dart' as pulumi;
import 'servicecatalog_portfolio_status_args.dart';

/// Manages status of Service Catalog in SageMaker. Service Catalog is used to create SageMaker AI projects.
///
/// ## Example Usage
///
/// Usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import models using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/servicecatalogPortfolioStatus:ServicecatalogPortfolioStatus example us-east-1
/// ```
class ServicecatalogPortfolioStatus extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Whether Service Catalog is enabled or disabled in SageMaker. Valid values are `Enabled` and `Disabled`.
  late final pulumi.Output<String> status;

  ServicecatalogPortfolioStatus(
    String name, {
    ServicecatalogPortfolioStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/servicecatalogPortfolioStatus:ServicecatalogPortfolioStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
  }
}
