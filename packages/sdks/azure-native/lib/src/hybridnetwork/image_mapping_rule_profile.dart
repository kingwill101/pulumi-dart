// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image mapping rule profile
class ImageMappingRuleProfile {
  /// List of values.
  final pulumi.Input<String>? userConfiguration;

  /// Creates a new [ImageMappingRuleProfile].
  /// [userConfiguration] List of values.
  ImageMappingRuleProfile({
    this.userConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userConfiguration': ?userConfiguration,
    };
  }

  factory ImageMappingRuleProfile.fromMap(Map<String, dynamic> map) {
    return ImageMappingRuleProfile(
      userConfiguration: (() { final guardedValue = map['userConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

