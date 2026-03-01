// ignore_for_file: unused_element, unnecessary_cast


class RegistryScanningConfigurationRuleRepositoryFilter {
  final String filter;
  final String filterType;

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
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}

