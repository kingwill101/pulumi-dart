// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_distribution_configurations_filter/get_distribution_configurations_filter.dart';

/// Arguments for getDistributionConfigurations.
class GetDistributionConfigurationsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetDistributionConfigurationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetDistributionConfigurationsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetDistributionConfigurationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetDistributionConfigurationsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetDistributionConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationsArgs(
      filters: Input.asOptionalInput<List<GetDistributionConfigurationsFilter>>(
          map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
