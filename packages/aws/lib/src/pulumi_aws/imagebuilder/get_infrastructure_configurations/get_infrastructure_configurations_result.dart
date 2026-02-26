// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_infrastructure_configurations_filter/get_infrastructure_configurations_filter.dart';

/// Result data returned by getInfrastructureConfigurations.
class GetInfrastructureConfigurationsResult {
  /// Set of ARNs of the matched Image Builder Infrastructure Configurations.
  final List<String> arns;
  final List<GetInfrastructureConfigurationsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Image Builder Infrastructure Configurations.
  final List<String> names;
  final String region;

  GetInfrastructureConfigurationsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.encodeList<GetInfrastructureConfigurationsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    return map;
  }

  factory GetInfrastructureConfigurationsResult.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetInfrastructureConfigurationsFilter>(
              map['filters'],
              (value) => GetInfrastructureConfigurationsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
