// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryScanningConfigurationRuleRepositoryFilter {
  final pulumi.Input<String> filter;
  final pulumi.Input<String> filterType;

  /// Creates a new [RegistryScanningConfigurationRuleRepositoryFilter].
  /// [filter] Required.
  /// [filterType] Required.
  RegistryScanningConfigurationRuleRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'filterType': filterType,
    };
  }

  factory RegistryScanningConfigurationRuleRepositoryFilter.fromMap(Map<String, dynamic> map) {
    return RegistryScanningConfigurationRuleRepositoryFilter(
      filter: (map['filter'] as String).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

