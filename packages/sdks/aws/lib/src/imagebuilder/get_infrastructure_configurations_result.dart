// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configurations_filter.dart';

/// Result data returned by getInfrastructureConfigurations.
class GetInfrastructureConfigurationsResult {
  /// Set of ARNs of the matched Image Builder Infrastructure Configurations.
  final List<String>? arns;
  final List<GetInfrastructureConfigurationsFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of names of the matched Image Builder Infrastructure Configurations.
  final List<String>? names;
  final String? region;

  /// Creates a new [GetInfrastructureConfigurationsResult].
  /// [arns] Set of ARNs of the matched Image Builder Infrastructure Configurations.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Infrastructure Configurations.
  /// [region] Optional.
  const GetInfrastructureConfigurationsResult({
    this.arns,
    this.filters,
    this.id,
    this.names,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': ?arns,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInfrastructureConfigurationsFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'names': ?names,
      'region': ?region,
    };
  }

  factory GetInfrastructureConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationsResult(
      arns: (() { final guardedValue = map['arns']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInfrastructureConfigurationsFilter>(guardedValue, (value) => GetInfrastructureConfigurationsFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (() { final guardedValue = map['names']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
