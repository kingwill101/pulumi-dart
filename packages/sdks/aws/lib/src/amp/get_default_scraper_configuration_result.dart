// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDefaultScraperConfiguration.
class GetDefaultScraperConfigurationResult {
  /// The configuration file.
  final String? configuration;
  final String? region;

  /// Creates a new [GetDefaultScraperConfigurationResult].
  /// [configuration] The configuration file.
  /// [region] Optional.
  const GetDefaultScraperConfigurationResult({
    this.configuration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?configuration,
      'region': ?region,
    };
  }

  factory GetDefaultScraperConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDefaultScraperConfigurationResult(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
