// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_servicecatalog_portfolio_status_servicecatalog_portfolio_status_args_doc}
/// The set of arguments for ServicecatalogPortfolioStatus.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_servicecatalog_portfolio_status_servicecatalog_portfolio_status_args_doc}
class ServicecatalogPortfolioStatusArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether Service Catalog is enabled or disabled in SageMaker. Valid values are `Enabled` and `Disabled`.
  final pulumi.Input<String> status;

  /// Creates a new [ServicecatalogPortfolioStatusArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Whether Service Catalog is enabled or disabled in SageMaker. Valid values are `Enabled` and `Disabled`.
  ServicecatalogPortfolioStatusArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> status,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'status': status,
    };
  }

  factory ServicecatalogPortfolioStatusArgs.fromMap(Map<String, dynamic> map) {
    return ServicecatalogPortfolioStatusArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

