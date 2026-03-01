// ignore_for_file: unused_element, unnecessary_cast


/// The language extension object.
class LanguageExtensionResponse {
  /// The language extension custom image name.
  final String? languageExtensionCustomImageName;
  /// The language extension image name.
  final String? languageExtensionImageName;
  /// The language extension name.
  final String? languageExtensionName;

  /// Creates a new [LanguageExtensionResponse].
  /// [languageExtensionCustomImageName] The language extension custom image name.
  /// [languageExtensionImageName] The language extension image name.
  /// [languageExtensionName] The language extension name.
  LanguageExtensionResponse({
    this.languageExtensionCustomImageName,
    this.languageExtensionImageName,
    this.languageExtensionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageExtensionCustomImageName': ?languageExtensionCustomImageName,
      'languageExtensionImageName': ?languageExtensionImageName,
      'languageExtensionName': ?languageExtensionName,
    };
  }

  factory LanguageExtensionResponse.fromMap(Map<String, dynamic> map) {
    return LanguageExtensionResponse(
      languageExtensionCustomImageName: map['languageExtensionCustomImageName'] == null ? null : map['languageExtensionCustomImageName'] as String,
      languageExtensionImageName: map['languageExtensionImageName'] == null ? null : map['languageExtensionImageName'] as String,
      languageExtensionName: map['languageExtensionName'] == null ? null : map['languageExtensionName'] as String,
    );
  }
}

