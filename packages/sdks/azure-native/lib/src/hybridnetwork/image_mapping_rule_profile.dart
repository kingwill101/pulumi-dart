// ignore_for_file: unused_element, unnecessary_cast


/// Image mapping rule profile
class ImageMappingRuleProfile {
  /// List of values.
  final String? userConfiguration;

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
      userConfiguration: map['userConfiguration'] == null ? null : map['userConfiguration'] as String,
    );
  }
}

