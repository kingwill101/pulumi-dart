// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of datadog
class DataDogConfigurationResponse {
  /// The data dog api key
  final String? key;
  /// The data dog site
  final String? site;

  /// Creates a new [DataDogConfigurationResponse].
  /// [key] The data dog api key
  /// [site] The data dog site
  DataDogConfigurationResponse({
    this.key,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'site': ?site,
    };
  }

  factory DataDogConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return DataDogConfigurationResponse(
      key: map['key'] == null ? null : map['key'] as String,
      site: map['site'] == null ? null : map['site'] as String,
    );
  }
}

