// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of datadog
class DataDogConfiguration {
  /// The data dog api key
  final String? key;
  /// The data dog site
  final String? site;

  /// Creates a new [DataDogConfiguration].
  /// [key] The data dog api key
  /// [site] The data dog site
  DataDogConfiguration({
    this.key,
    this.site,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'site': ?site,
    };
  }

  factory DataDogConfiguration.fromMap(Map<String, dynamic> map) {
    return DataDogConfiguration(
      key: map['key'] == null ? null : map['key'] as String,
      site: map['site'] == null ? null : map['site'] as String,
    );
  }
}

