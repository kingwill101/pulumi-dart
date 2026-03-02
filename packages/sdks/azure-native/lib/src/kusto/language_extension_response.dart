// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension object.
class LanguageExtensionResponse {
  /// The language extension custom image name.
  final pulumi.Input<String>? languageExtensionCustomImageName;
  /// The language extension image name.
  final pulumi.Input<String>? languageExtensionImageName;
  /// The language extension name.
  final pulumi.Input<String>? languageExtensionName;

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
      languageExtensionCustomImageName: map['languageExtensionCustomImageName'] == null ? null : (map['languageExtensionCustomImageName']! as String).input(),
      languageExtensionImageName: map['languageExtensionImageName'] == null ? null : (map['languageExtensionImageName']! as String).input(),
      languageExtensionName: map['languageExtensionName'] == null ? null : (map['languageExtensionName']! as String).input(),
    );
  }
}

