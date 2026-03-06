// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLifecyclePolicyDocumentRuleSelection {
  /// Specify a count number. If the `count_type` used is `imageCountMoreThan`, then the value is the maximum number of images that you want to retain in your repository. If the `count_type` used is `sinceImagePushed`, then the value is the maximum age limit for your images. If the `count_type` used is `sinceImagePulled`, then the value is the maximum number of days since the image was last pulled. If the `count_type` used is `sinceImageTransitioned`, then the value is the maximum number of days since the image was archived.
  final pulumi.Input<int> countNumber;
  /// Specify a count type to apply to the images. If `count_type` is set to `imageCountMoreThan`, you also specify `count_number` to create a rule that sets a limit on the number of images that exist in your repository. If `count_type` is set to `sinceImagePushed`, `sinceImagePulled`, or `sinceImageTransitioned`, you also specify `count_unit` and `count_number` to specify a time limit on the images that exist in your repository.
  final pulumi.Input<String> countType;
  /// Specify a count unit of `days` to indicate that as the unit of time, in addition to `count_number`, which is the number of days.
  final pulumi.Input<String>? countUnit;
  /// The rule will only select images of this storage class. When using a `count_type` of `imageCountMoreThan`, `sinceImagePushed`, or `sinceImagePulled`, the only supported value is `standard`. When using a `count_type` of `sinceImageTransitioned`, this is required, and the only supported value is `archive`. If you omit this, the value of `standard` will be used.
  final pulumi.Input<String>? storageClass;
  /// You must specify a comma-separated list of image tag patterns that may contain wildcards (\*) on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag pattern list `["prod\*"]` to specify all of them. If you specify multiple tags, only the images with all specified tags are selected. There is a maximum limit of four wildcards (\*) per string. For example, `["*test*1*2*3", "test*1*2*3*"]` is valid but `["test*1*2*3*4*5*6"]` is invalid.
  final pulumi.Input<List<String>>? tagPatternLists;
  /// You must specify a comma-separated list of image tag prefixes on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag prefix "prod" to specify all of them. If you specify multiple tags, only images with all specified tags are selected.
  final pulumi.Input<List<String>>? tagPrefixLists;
  /// Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are `tagged`, `untagged`, or `any`. If you specify `any`, then all images have the rule evaluated against them. If you specify `tagged`, then you must also specify a `tag_prefix_list` value or a `tag_pattern_list` value. If you specify `untagged`, then you must omit both `tag_prefix_list` and `tag_pattern_list`.
  final pulumi.Input<String> tagStatus;

  /// Creates a new [GetLifecyclePolicyDocumentRuleSelection].
  /// [countNumber] Specify a count number. If the `count_type` used is `imageCountMoreThan`, then the value is the maximum number of images that you want to retain in your repository. If the `count_type` used is `sinceImagePushed`, then the value is the maximum age limit for your images. If the `count_type` used is `sinceImagePulled`, then the value is the maximum number of days since the image was last pulled. If the `count_type` used is `sinceImageTransitioned`, then the value is the maximum number of days since the image was archived.
  /// [countType] Specify a count type to apply to the images. If `count_type` is set to `imageCountMoreThan`, you also specify `count_number` to create a rule that sets a limit on the number of images that exist in your repository. If `count_type` is set to `sinceImagePushed`, `sinceImagePulled`, or `sinceImageTransitioned`, you also specify `count_unit` and `count_number` to specify a time limit on the images that exist in your repository.
  /// [countUnit] Specify a count unit of `days` to indicate that as the unit of time, in addition to `count_number`, which is the number of days.
  /// [storageClass] The rule will only select images of this storage class. When using a `count_type` of `imageCountMoreThan`, `sinceImagePushed`, or `sinceImagePulled`, the only supported value is `standard`. When using a `count_type` of `sinceImageTransitioned`, this is required, and the only supported value is `archive`. If you omit this, the value of `standard` will be used.
  /// [tagPatternLists] You must specify a comma-separated list of image tag patterns that may contain wildcards (\*) on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag pattern list `["prod\*"]` to specify all of them. If you specify multiple tags, only the images with all specified tags are selected. There is a maximum limit of four wildcards (\*) per string. For example, `["*test*1*2*3", "test*1*2*3*"]` is valid but `["test*1*2*3*4*5*6"]` is invalid.
  /// [tagPrefixLists] You must specify a comma-separated list of image tag prefixes on which to take action with your lifecycle policy. For example, if your images are tagged as `prod`, `prod1`, `prod2`, and so on, you would use the tag prefix "prod" to specify all of them. If you specify multiple tags, only images with all specified tags are selected.
  /// [tagStatus] Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are `tagged`, `untagged`, or `any`. If you specify `any`, then all images have the rule evaluated against them. If you specify `tagged`, then you must also specify a `tag_prefix_list` value or a `tag_pattern_list` value. If you specify `untagged`, then you must omit both `tag_prefix_list` and `tag_pattern_list`.
  const GetLifecyclePolicyDocumentRuleSelection({
    required this.countNumber,
    required this.countType,
    this.countUnit,
    this.storageClass,
    this.tagPatternLists,
    this.tagPrefixLists,
    required this.tagStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countNumber': countNumber,
      'countType': countType,
      'countUnit': ?countUnit,
      'storageClass': ?storageClass,
      'tagPatternLists': ?tagPatternLists,
      'tagPrefixLists': ?tagPrefixLists,
      'tagStatus': tagStatus,
    };
  }

  factory GetLifecyclePolicyDocumentRuleSelection.fromMap(Map<String, dynamic> map) {
    return GetLifecyclePolicyDocumentRuleSelection(
      countNumber: pulumi.Input.fromValue(map['countNumber'] as int),
      countType: pulumi.Input.fromValue(map['countType'] as String),
      countUnit: (() { final guardedValue = map['countUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagPatternLists: (() { final guardedValue = map['tagPatternLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagPrefixLists: (() { final guardedValue = map['tagPrefixLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tagStatus: pulumi.Input.fromValue(map['tagStatus'] as String),
    );
  }
}

