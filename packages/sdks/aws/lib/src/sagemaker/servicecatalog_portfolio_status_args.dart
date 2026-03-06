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
  const ServicecatalogPortfolioStatusArgs({
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'status': status,
    };
  }

  factory ServicecatalogPortfolioStatusArgs.fromMap(Map<String, dynamic> map) {
    return ServicecatalogPortfolioStatusArgs(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}

