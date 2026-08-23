// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultScraperConfiguration.
class GetDefaultScraperConfigurationResult {
  /// The configuration file.
  final String configuration;
  final String region;

  /// Creates a new [GetDefaultScraperConfigurationResult].
  /// [configuration] The configuration file.
  /// [region] Required.
  const GetDefaultScraperConfigurationResult({
    required this.configuration,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration,
      'region': region,
    };
  }

  factory GetDefaultScraperConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultScraperConfigurationResult(
      configuration: map['configuration'] as String,
      region: map['region'] as String,
    );
  }
}
