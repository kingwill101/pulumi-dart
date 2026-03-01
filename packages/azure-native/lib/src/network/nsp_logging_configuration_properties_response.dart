// ignore_for_file: unused_element, unnecessary_cast


/// The NSP logging configuration properties.
class NspLoggingConfigurationPropertiesResponse {
  /// The log categories to enable in the NSP logging configuration.
  final List<String>? enabledLogCategories;
  /// The version of the NSP logging configuration.
  final String? version;

  /// Creates a new [NspLoggingConfigurationPropertiesResponse].
  /// [enabledLogCategories] The log categories to enable in the NSP logging configuration.
  /// [version] The version of the NSP logging configuration.
  NspLoggingConfigurationPropertiesResponse({
    this.enabledLogCategories,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledLogCategories': ?enabledLogCategories,
      'version': ?version,
    };
  }

  factory NspLoggingConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NspLoggingConfigurationPropertiesResponse(
      enabledLogCategories: map['enabledLogCategories'] == null ? null : (map['enabledLogCategories'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

