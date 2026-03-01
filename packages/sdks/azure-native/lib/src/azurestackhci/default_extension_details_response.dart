// ignore_for_file: unused_element, unnecessary_cast


/// Properties for a particular default extension category.
class DefaultExtensionDetailsResponse {
  /// Default extension category
  final String category;
  /// Consent time for extension category
  final String consentTime;

  /// Creates a new [DefaultExtensionDetailsResponse].
  /// [category] Default extension category
  /// [consentTime] Consent time for extension category
  DefaultExtensionDetailsResponse({
    required this.category,
    required this.consentTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'consentTime': consentTime,
    };
  }

  factory DefaultExtensionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DefaultExtensionDetailsResponse(
      category: map['category'] as String,
      consentTime: map['consentTime'] as String,
    );
  }
}

