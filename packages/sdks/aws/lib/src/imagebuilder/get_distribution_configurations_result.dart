// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_configurations_filter.dart';

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

  /// Creates a new [GetDistributionConfigurationsResult].
  /// [arns] Set of ARNs of the matched Image Builder Distribution Configurations.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of names of the matched Image Builder Distribution Configurations.
  /// [region] Required.
  GetDistributionConfigurationsResult({
    required this.arns,
    this.filters,
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arns': arns,
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetDistributionConfigurationsFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'names': names,
      'region': region,
    };
  }

  factory GetDistributionConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionConfigurationsResult(
      arns: (map['arns'] as List).cast<String>(),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetDistributionConfigurationsFilter>(map['filters']!, (value) => GetDistributionConfigurationsFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

