// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_distribution_configurations_filter/get_distribution_configurations_filter.dart';

/// Result data returned by getDistributionConfigurations.
class GetDistributionConfigurationsResult {
  /// Set of ARNs of the matched Image Builder Distribution Configurations.
  final List<String> arns;
  final List<GetDistributionConfigurationsFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of names of the matched Image Builder Distribution Configurations.
  final List<String> names;
  final String region;

  GetDistributionConfigurationsResult({
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
      map['filters'] = Input.encodeList<GetDistributionConfigurationsFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    return map;
  }

  factory GetDistributionConfigurationsResult.fromMap(
      Map<String, dynamic> map) {
    return GetDistributionConfigurationsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetDistributionConfigurationsFilter>(
              map['filters'],
              (value) => GetDistributionConfigurationsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
