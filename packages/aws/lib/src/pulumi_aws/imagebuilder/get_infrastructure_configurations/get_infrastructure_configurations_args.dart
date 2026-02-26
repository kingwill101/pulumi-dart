// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_infrastructure_configurations_filter/get_infrastructure_configurations_filter.dart';

/// Arguments for getInfrastructureConfigurations.
class GetInfrastructureConfigurationsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetInfrastructureConfigurationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetInfrastructureConfigurationsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<
              List<GetInfrastructureConfigurationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => Input.encodeList<GetInfrastructureConfigurationsFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetInfrastructureConfigurationsArgs.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationsArgs(
      filters:
          Input.asOptionalInput<List<GetInfrastructureConfigurationsFilter>>(
              map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
