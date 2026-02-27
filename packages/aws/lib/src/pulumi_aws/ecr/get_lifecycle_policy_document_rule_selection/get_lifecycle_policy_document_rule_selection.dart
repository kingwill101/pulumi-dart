// ignore_for_file: unused_element, unnecessary_cast

class GetLifecyclePolicyDocumentRuleSelection {
  /// Specify a count number. If the `count_type` used is `imageCountMoreThan`, then the value is the maximum number of images that you want to retain in your repository. If the `count_type` used is `sinceImagePushed`, then the value is the maximum age limit for your images. If the `count_type` used is `sinceImagePulled`, then the value is the maximum number of days since the image was last pulled. If the `count_type` used is `sinceImageTransitioned`, then the value is the maximum number of days since the image was archived.
  final int countNumber;

  /// Specify a count type to apply to the images. If `count_type` is set to `imageCountMoreThan`, you also specify `count_number` to create a rule that sets a limit on the number of images that exist in your repository. If `count_type` is set to `sinceImagePushed`, `sinceImagePulled`, or `sinceImageTransitioned`, you also specify `count_unit` and `count_number` to specify a time limit on the images that exist in your repository.
  final String countType;

  /// Specify a count unit of `days` to indicate that as the unit of time, in addition to `count_number`, which is the number of days.
  final String? countUnit;

  /// The rule will only select images of this storage class. When using a `count_type` of `imageCountMoreThan`, `sinceImagePushed`, or `sinceImagePulled`, the only supported value is `standard`. When using a `count_type` of `sinceImageTransitioned`, this is required, and the only supported value is `archive`. If you omit this, the value of `standard` will be used.
  final String? storageClass;

  /// You must specify a comma-separated list of image tag patterns that may contain wildcards (\*) on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag pattern list `["prod\*"]` to specify all of them. If you specify multiple tags, only the images with all specified tags are selected. There is a maximum limit of four wildcards (\*) per string. For example, `["*test*1*2*3", "test*1*2*3*"]` is valid but `["test*1*2*3*4*5*6"]` is invalid.
  final List<String>? tagPatternLists;

  /// You must specify a comma-separated list of image tag prefixes on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag prefix "prod" to specify all of them. If you specify multiple tags, only images with all specified tags are selected.
  final List<String>? tagPrefixLists;

  /// Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are `tagged`, `untagged`, or `any`. If you specify `any`, then all images have the rule evaluated against them. If you specify `tagged`, then you must also specify a `tag_prefix_list` value or a `tag_pattern_list` value. If you specify `untagged`, then you must omit both `tag_prefix_list` and `tag_pattern_list`.
  final String tagStatus;

  GetLifecyclePolicyDocumentRuleSelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.storageClass,
    this.tagPatternLists,
    this.tagPrefixLists,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['countNumber'] = countNumber;
    map['countType'] = countType;
    final countUnitValue = countUnit;
    if (countUnitValue != null) {
      map['countUnit'] = countUnitValue;
    }
    final storageClassValue = storageClass;
    if (storageClassValue != null) {
      map['storageClass'] = storageClassValue;
    }
    final tagPatternListsValue = tagPatternLists;
    if (tagPatternListsValue != null) {
      map['tagPatternLists'] = tagPatternListsValue;
    }
    final tagPrefixListsValue = tagPrefixLists;
    if (tagPrefixListsValue != null) {
      map['tagPrefixLists'] = tagPrefixListsValue;
    }
    map['tagStatus'] = tagStatus;
    return map;
  }

  factory GetLifecyclePolicyDocumentRuleSelection.fromMap(
      Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRuleSelection(
      countNumber: map['countNumber'] as int,
      countType: map['countType'] as String,
      countUnit: map['countUnit'] == null ? null : map['countUnit'] as String,
      storageClass:
          map['storageClass'] == null ? null : map['storageClass'] as String,
      tagPatternLists: map['tagPatternLists'] == null
          ? null
          : (map['tagPatternLists'] as List).cast<String>(),
      tagPrefixLists: map['tagPrefixLists'] == null
          ? null
          : (map['tagPrefixLists'] as List).cast<String>(),
      tagStatus: map['tagStatus'] as String,
    );
  }
}
