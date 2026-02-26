// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../registry_scanning_configuration_rule_repository_filter/registry_scanning_configuration_rule_repository_filter.dart';

class RegistryScanningConfigurationRule {
  /// One or more repository filter blocks, containing a <span pulumi-lang-nodejs="`filter`" pulumi-lang-dotnet="`Filter`" pulumi-lang-go="`filter`" pulumi-lang-python="`filter`" pulumi-lang-yaml="`filter`" pulumi-lang-java="`filter`">`filter`</span> (required string filtering repositories, see pattern regex [here](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/API_ScanningRepositoryFilter.html)) and a <span pulumi-lang-nodejs="`filterType`" pulumi-lang-dotnet="`FilterType`" pulumi-lang-go="`filterType`" pulumi-lang-python="`filter_type`" pulumi-lang-yaml="`filterType`" pulumi-lang-java="`filterType`">`filter_type`</span> (required string, currently only `WILDCARD` is supported).
  final List<RegistryScanningConfigurationRuleRepositoryFilter>
      repositoryFilters;

  /// The frequency that scans are performed at for a private registry. Can be `SCAN_ON_PUSH`, `CONTINUOUS_SCAN`, or `MANUAL`.
  final String scanFrequency;

  RegistryScanningConfigurationRule({
    required this.repositoryFilters,
    required this.scanFrequency,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryFilters'] = Input.encodeList<
        RegistryScanningConfigurationRuleRepositoryFilter,
        Map<String, dynamic>>(repositoryFilters, (value) => value.toMap());
    map['scanFrequency'] = scanFrequency;
    return map;
  }

  factory RegistryScanningConfigurationRule.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationRule(
      repositoryFilters:
          Input.decodeList<RegistryScanningConfigurationRuleRepositoryFilter>(
              map['repositoryFilters'],
              (value) =>
                  RegistryScanningConfigurationRuleRepositoryFilter.fromMap(
                      (value as Map).cast<String, dynamic>())),
      scanFrequency: map['scanFrequency'] as String,
    );
  }
}
