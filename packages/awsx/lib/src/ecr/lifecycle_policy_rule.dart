// ignore_for_file: unused_element, unnecessary_cast

import 'lifecycle_tag_status.dart';

/// A lifecycle policy rule that determine which images in a repository should be expired.
class LifecyclePolicyRule {
  /// Describes the purpose of a rule within a lifecycle policy.
  final String? description;
  /// The maximum age limit (in days) for your images. Either [maximumNumberOfImages] or [maximumAgeLimit] must be provided.
  final double? maximumAgeLimit;
  /// The maximum number of images that you want to retain in your repository. Either [maximumNumberOfImages] or [maximumAgeLimit] must be provided.
  final double? maximumNumberOfImages;
  /// A list of image tag prefixes on which to take action with your lifecycle policy. Only used if you specified "tagStatus": "tagged". For example, if your images are tagged as prod, prod1, prod2, and so on, you would use the tag prefix prod to specify all of them. If you specify multiple tags, only the images with all specified tags are selected.
  final List<String>? tagPrefixList;
  /// Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are tagged, untagged, or any. If you specify any, then all images have the rule evaluated against them. If you specify tagged, then you must also specify a tagPrefixList value. If you specify untagged, then you must omit tagPrefixList.
  final LifecycleTagStatus tagStatus;

  /// Creates a new [LifecyclePolicyRule].
  /// [description] Describes the purpose of a rule within a lifecycle policy.
  /// [maximumAgeLimit] The maximum age limit (in days) for your images. Either [maximumNumberOfImages] or [maximumAgeLimit] must be provided.
  /// [maximumNumberOfImages] The maximum number of images that you want to retain in your repository. Either [maximumNumberOfImages] or [maximumAgeLimit] must be provided.
  /// [tagPrefixList] A list of image tag prefixes on which to take action with your lifecycle policy. Only used if you specified "tagStatus": "tagged". For example, if your images are tagged as prod, prod1, prod2, and so on, you would use the tag prefix prod to specify all of them. If you specify multiple tags, only the images with all specified tags are selected.
  /// [tagStatus] Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are tagged, untagged, or any. If you specify any, then all images have the rule evaluated against them. If you specify tagged, then you must also specify a tagPrefixList value. If you specify untagged, then you must omit tagPrefixList.
  LifecyclePolicyRule({
    this.description,
    this.maximumAgeLimit,
    this.maximumNumberOfImages,
    this.tagPrefixList,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'maximumAgeLimit': ?maximumAgeLimit,
      'maximumNumberOfImages': ?maximumNumberOfImages,
      'tagPrefixList': ?tagPrefixList,
      'tagStatus': tagStatus.value,
    };
  }

  factory LifecyclePolicyRule.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyRule(
      description: map['description'] == null ? null : map['description'] as String,
      maximumAgeLimit: map['maximumAgeLimit'] == null ? null : map['maximumAgeLimit'] as double,
      maximumNumberOfImages: map['maximumNumberOfImages'] == null ? null : map['maximumNumberOfImages'] as double,
      tagPrefixList: map['tagPrefixList'] == null ? null : (map['tagPrefixList'] as List).cast<String>(),
      tagStatus: LifecycleTagStatus.fromValue(map['tagStatus'] as String),
    );
  }
}

