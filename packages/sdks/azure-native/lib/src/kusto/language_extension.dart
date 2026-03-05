// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The language extension object.
class LanguageExtension {
  /// The language extension custom image name.
  final pulumi.Input<String>? languageExtensionCustomImageName;
  /// The language extension image name.
  final pulumi.Input<String>? languageExtensionImageName;
  /// The language extension name.
  final pulumi.Input<String>? languageExtensionName;

  /// Creates a new [LanguageExtension].
  /// [languageExtensionCustomImageName] The language extension custom image name.
  /// [languageExtensionImageName] The language extension image name.
  /// [languageExtensionName] The language extension name.
  LanguageExtension({
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

  factory LanguageExtension.fromMap(Map<String, dynamic> map) {
    return LanguageExtension(
      languageExtensionCustomImageName: (() { final guardedValue = map['languageExtensionCustomImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageExtensionImageName: (() { final guardedValue = map['languageExtensionImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageExtensionName: (() { final guardedValue = map['languageExtensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

