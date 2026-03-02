// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_scanning_configuration_rule_repository_filter.dart';

class RegistryScanningConfigurationRule {
  /// One or more repository filter blocks, containing a `filter` (required string filtering repositories, see pattern regex [here](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_ScanningRepositoryFilter.html)) and a `filter_type` (required string, currently only `WILDCARD` is supported).
  final pulumi.Input<List<RegistryScanningConfigurationRuleRepositoryFilter>> repositoryFilters;
  /// The frequency that scans are performed at for a private registry. Can be `SCAN_ON_PUSH`, `CONTINUOUS_SCAN`, or `MANUAL`.
  final pulumi.Input<String> scanFrequency;

  /// Creates a new [RegistryScanningConfigurationRule].
  /// [repositoryFilters] One or more repository filter blocks, containing a `filter` (required string filtering repositories, see pattern regex [here](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_ScanningRepositoryFilter.html)) and a `filter_type` (required string, currently only `WILDCARD` is supported).
  /// [scanFrequency] The frequency that scans are performed at for a private registry. Can be `SCAN_ON_PUSH`, `CONTINUOUS_SCAN`, or `MANUAL`.
  RegistryScanningConfigurationRule({
    required this.repositoryFilters,
    required this.scanFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryFilters': pulumi.Input.mapInputValue<List<RegistryScanningConfigurationRuleRepositoryFilter>, List<Map<String, dynamic>>>(repositoryFilters, (value) => pulumi.Input.encodeList<RegistryScanningConfigurationRuleRepositoryFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scanFrequency': scanFrequency,
    };
  }

  factory RegistryScanningConfigurationRule.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationRule(
      repositoryFilters: (pulumi.Input.decodeList<RegistryScanningConfigurationRuleRepositoryFilter>(map['repositoryFilters']!, (value) => RegistryScanningConfigurationRuleRepositoryFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      scanFrequency: (map['scanFrequency'] as String).input(),
    );
  }
}

