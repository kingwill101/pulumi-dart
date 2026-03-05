// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDefaultScraperConfiguration.
class GetDefaultScraperConfigurationResult {
  /// The configuration file.
  final String configuration;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetDefaultScraperConfigurationResult].
  /// [configuration] The configuration file.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetDefaultScraperConfigurationResult({
    required this.configuration,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': configuration,
      'id': id,
      'region': region,
    };
  }

  factory GetDefaultScraperConfigurationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDefaultScraperConfigurationResult(
      configuration: map['configuration'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
