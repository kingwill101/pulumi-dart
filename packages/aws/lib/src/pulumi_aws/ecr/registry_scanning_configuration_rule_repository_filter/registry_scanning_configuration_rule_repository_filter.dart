// ignore_for_file: unused_element, unnecessary_cast

class RegistryScanningConfigurationRuleRepositoryFilter {
  final String filter;
  final String filterType;

  RegistryScanningConfigurationRuleRepositoryFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['filterType'] = filterType;
    return map;
  }

  factory RegistryScanningConfigurationRuleRepositoryFilter.fromMap(
      Map<String, dynamic> map) {
    return RegistryScanningConfigurationRuleRepositoryFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
