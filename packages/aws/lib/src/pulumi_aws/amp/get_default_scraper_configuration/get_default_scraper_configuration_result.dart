// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultScraperConfiguration.
class GetDefaultScraperConfigurationResult {
  /// The configuration file.
  final String configuration;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetDefaultScraperConfigurationResult({
    required this.configuration,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] = configuration;
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDefaultScraperConfigurationResult.fromMap(
      Map<String, dynamic> map) {
    return GetDefaultScraperConfigurationResult(
      configuration: map['configuration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
