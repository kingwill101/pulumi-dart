// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configurations_filter.dart';

/// {@template pulumi_imagebuilder_get_infrastructure_configurations_get_infrastructure_configurations_args_doc}
/// Arguments for getInfrastructureConfigurations.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_get_infrastructure_configurations_get_infrastructure_configurations_args_doc}
class GetInfrastructureConfigurationsArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetInfrastructureConfigurationsFilter>?>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetInfrastructureConfigurationsArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetInfrastructureConfigurationsArgs({
    this.filters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetInfrastructureConfigurationsFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetInfrastructureConfigurationsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
    };
  }

  factory GetInfrastructureConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationsArgs(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetInfrastructureConfigurationsFilter>(guardedValue, (value) => GetInfrastructureConfigurationsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
