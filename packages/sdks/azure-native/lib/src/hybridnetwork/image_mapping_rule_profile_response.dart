// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Image mapping rule profile
class ImageMappingRuleProfileResponse {
  /// List of values.
  final pulumi.Input<String>? userConfiguration;

  /// Creates a new [ImageMappingRuleProfileResponse].
  /// [userConfiguration] List of values.
  ImageMappingRuleProfileResponse({
    this.userConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userConfiguration': ?userConfiguration,
    };
  }

  factory ImageMappingRuleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ImageMappingRuleProfileResponse(
      userConfiguration: map['userConfiguration'] == null ? null : (map['userConfiguration'] as String).input(),
    );
  }
}

