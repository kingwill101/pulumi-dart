// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_infrastructure_configurations_filter/get_infrastructure_configurations_filter.dart';

/// Arguments for getInfrastructureConfigurations.
class GetInfrastructureConfigurationsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetInfrastructureConfigurationsFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetInfrastructureConfigurationsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetInfrastructureConfigurationsFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<
              GetInfrastructureConfigurationsFilter,
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
      filters: pulumi.Input.asOptionalInput<
          List<GetInfrastructureConfigurationsFilter>>(map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
