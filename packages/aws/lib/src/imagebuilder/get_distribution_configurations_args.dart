// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configurations_filter.dart';

/// {@template pulumi_imagebuilder_get_distribution_configurations_get_distribution_configurations_args_doc}
/// Arguments for getDistributionConfigurations.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_distribution_configurations_get_distribution_configurations_args_doc}
class GetDistributionConfigurationsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetDistributionConfigurationsFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDistributionConfigurationsArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDistributionConfigurationsArgs({
    List<GetDistributionConfigurationsFilter>? filters,
    String? region,
  }) :
      filters = pulumi.Input.asOptionalInput<List<GetDistributionConfigurationsFilter>>(filters),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDistributionConfigurationsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDistributionConfigurationsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetDistributionConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationsArgs(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDistributionConfigurationsFilter>(map['filters'], (value) => GetDistributionConfigurationsFilter.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

