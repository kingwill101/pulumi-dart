// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ServicecatalogPortfolioStatus.
class ServicecatalogPortfolioStatusArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether Service Catalog is enabled or disabled in SageMaker. Valid values are `Enabled` and `Disabled`.
  final pulumi.Input<String> status;

  ServicecatalogPortfolioStatusArgs({
    this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['status'] = status;
    return map;
  }

  factory ServicecatalogPortfolioStatusArgs.fromMap(Map<String, dynamic> map) {
    return ServicecatalogPortfolioStatusArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      status: pulumi.Input.asInput<String>(map['status']),
    );
  }
}
