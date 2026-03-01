// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the source to which safety providers applies.
class SafetyProviderConfigResponse {
  /// If blocking would occur.
  final bool? blocking;
  /// Name of RAI Safety Provider.
  final String? safetyProviderName;
  /// Content source to apply the Content Filters.
  final String? source;

  /// Creates a new [SafetyProviderConfigResponse].
  /// [blocking] If blocking would occur.
  /// [safetyProviderName] Name of RAI Safety Provider.
  /// [source] Content source to apply the Content Filters.
  SafetyProviderConfigResponse({
    this.blocking,
    this.safetyProviderName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blocking': ?blocking,
      'safetyProviderName': ?safetyProviderName,
      'source': ?source,
    };
  }

  factory SafetyProviderConfigResponse.fromMap(Map<String, dynamic> map) {
    return SafetyProviderConfigResponse(
      blocking: map['blocking'] == null ? null : map['blocking'] as bool,
      safetyProviderName: map['safetyProviderName'] == null ? null : map['safetyProviderName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

