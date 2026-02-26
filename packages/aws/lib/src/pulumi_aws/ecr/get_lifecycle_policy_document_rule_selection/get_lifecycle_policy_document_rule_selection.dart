// ignore_for_file: unused_element, unnecessary_cast

class GetLifecyclePolicyDocumentRuleSelection {
  /// Specify a count number. If the <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> used is `imageCountMoreThan`, then the value is the maximum number of images that you want to retain in your repository. If the <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> used is `sinceImagePushed`, then the value is the maximum age limit for your images. If the <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> used is `sinceImagePulled`, then the value is the maximum number of days since the image was last pulled. If the <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> used is `sinceImageTransitioned`, then the value is the maximum number of days since the image was archived.
  final int countNumber;

  /// Specify a count type to apply to the images. If <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> is set to `imageCountMoreThan`, you also specify <span pulumi-lang-nodejs="`countNumber`" pulumi-lang-dotnet="`CountNumber`" pulumi-lang-go="`countNumber`" pulumi-lang-python="`count_number`" pulumi-lang-yaml="`countNumber`" pulumi-lang-java="`countNumber`">`count_number`</span> to create a rule that sets a limit on the number of images that exist in your repository. If <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> is set to `sinceImagePushed`, `sinceImagePulled`, or `sinceImageTransitioned`, you also specify <span pulumi-lang-nodejs="`countUnit`" pulumi-lang-dotnet="`CountUnit`" pulumi-lang-go="`countUnit`" pulumi-lang-python="`count_unit`" pulumi-lang-yaml="`countUnit`" pulumi-lang-java="`countUnit`">`count_unit`</span> and <span pulumi-lang-nodejs="`countNumber`" pulumi-lang-dotnet="`CountNumber`" pulumi-lang-go="`countNumber`" pulumi-lang-python="`count_number`" pulumi-lang-yaml="`countNumber`" pulumi-lang-java="`countNumber`">`count_number`</span> to specify a time limit on the images that exist in your repository.
  final String countType;

  /// Specify a count unit of <span pulumi-lang-nodejs="`days`" pulumi-lang-dotnet="`Days`" pulumi-lang-go="`days`" pulumi-lang-python="`days`" pulumi-lang-yaml="`days`" pulumi-lang-java="`days`">`days`</span> to indicate that as the unit of time, in addition to <span pulumi-lang-nodejs="`countNumber`" pulumi-lang-dotnet="`CountNumber`" pulumi-lang-go="`countNumber`" pulumi-lang-python="`count_number`" pulumi-lang-yaml="`countNumber`" pulumi-lang-java="`countNumber`">`count_number`</span>, which is the number of days.
  final String? countUnit;

  /// The rule will only select images of this storage class. When using a <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> of `imageCountMoreThan`, `sinceImagePushed`, or `sinceImagePulled`, the only supported value is <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span>. When using a <span pulumi-lang-nodejs="`countType`" pulumi-lang-dotnet="`CountType`" pulumi-lang-go="`countType`" pulumi-lang-python="`count_type`" pulumi-lang-yaml="`countType`" pulumi-lang-java="`countType`">`count_type`</span> of `sinceImageTransitioned`, this is required, and the only supported value is <span pulumi-lang-nodejs="`archive`" pulumi-lang-dotnet="`Archive`" pulumi-lang-go="`archive`" pulumi-lang-python="`archive`" pulumi-lang-yaml="`archive`" pulumi-lang-java="`archive`">`archive`</span>. If you omit this, the value of <span pulumi-lang-nodejs="`standard`" pulumi-lang-dotnet="`Standard`" pulumi-lang-go="`standard`" pulumi-lang-python="`standard`" pulumi-lang-yaml="`standard`" pulumi-lang-java="`standard`">`standard`</span> will be used.
  final String? storageClass;

  /// You must specify a comma-separated list of image tag patterns that may contain wildcards (\*) on which to take action with your lifecycle policy. For example, if your images are tagged as <span pulumi-lang-nodejs="`prod`" pulumi-lang-dotnet="`Prod`" pulumi-lang-go="`prod`" pulumi-lang-python="`prod`" pulumi-lang-yaml="`prod`" pulumi-lang-java="`prod`">`prod`</span>, <span pulumi-lang-nodejs="`prod1`" pulumi-lang-dotnet="`Prod1`" pulumi-lang-go="`prod1`" pulumi-lang-python="`prod1`" pulumi-lang-yaml="`prod1`" pulumi-lang-java="`prod1`">`prod1`</span>, <span pulumi-lang-nodejs="`prod2`" pulumi-lang-dotnet="`Prod2`" pulumi-lang-go="`prod2`" pulumi-lang-python="`prod2`" pulumi-lang-yaml="`prod2`" pulumi-lang-java="`prod2`">`prod2`</span>, and so on, you would use the tag pattern list `["prod\*"]` to specify all of them. If you specify multiple tags, only the images with all specified tags are selected. There is a maximum limit of four wildcards (\*) per string. For example, `["*test*1*2*3", "test*1*2*3*"]` is valid but `["test*1*2*3*4*5*6"]` is invalid.
  final List<String>? tagPatternLists;

  /// You must specify a comma-separated list of image tag prefixes on which to take action with your lifecycle policy. For example, if your images are tagged as <span pulumi-lang-nodejs="`prod`" pulumi-lang-dotnet="`Prod`" pulumi-lang-go="`prod`" pulumi-lang-python="`prod`" pulumi-lang-yaml="`prod`" pulumi-lang-java="`prod`">`prod`</span>, <span pulumi-lang-nodejs="`prod1`" pulumi-lang-dotnet="`Prod1`" pulumi-lang-go="`prod1`" pulumi-lang-python="`prod1`" pulumi-lang-yaml="`prod1`" pulumi-lang-java="`prod1`">`prod1`</span>, <span pulumi-lang-nodejs="`prod2`" pulumi-lang-dotnet="`Prod2`" pulumi-lang-go="`prod2`" pulumi-lang-python="`prod2`" pulumi-lang-yaml="`prod2`" pulumi-lang-java="`prod2`">`prod2`</span>, and so on, you would use the tag prefix "prod" to specify all of them. If you specify multiple tags, only images with all specified tags are selected.
  final List<String>? tagPrefixLists;

  /// Determines whether the lifecycle policy rule that you are adding specifies a tag for an image. Acceptable options are <span pulumi-lang-nodejs="`tagged`" pulumi-lang-dotnet="`Tagged`" pulumi-lang-go="`tagged`" pulumi-lang-python="`tagged`" pulumi-lang-yaml="`tagged`" pulumi-lang-java="`tagged`">`tagged`</span>, <span pulumi-lang-nodejs="`untagged`" pulumi-lang-dotnet="`Untagged`" pulumi-lang-go="`untagged`" pulumi-lang-python="`untagged`" pulumi-lang-yaml="`untagged`" pulumi-lang-java="`untagged`">`untagged`</span>, or <span pulumi-lang-nodejs="`any`" pulumi-lang-dotnet="`Any`" pulumi-lang-go="`any`" pulumi-lang-python="`any`" pulumi-lang-yaml="`any`" pulumi-lang-java="`any`">`any`</span>. If you specify <span pulumi-lang-nodejs="`any`" pulumi-lang-dotnet="`Any`" pulumi-lang-go="`any`" pulumi-lang-python="`any`" pulumi-lang-yaml="`any`" pulumi-lang-java="`any`">`any`</span>, then all images have the rule evaluated against them. If you specify <span pulumi-lang-nodejs="`tagged`" pulumi-lang-dotnet="`Tagged`" pulumi-lang-go="`tagged`" pulumi-lang-python="`tagged`" pulumi-lang-yaml="`tagged`" pulumi-lang-java="`tagged`">`tagged`</span>, then you must also specify a <span pulumi-lang-nodejs="`tagPrefixList`" pulumi-lang-dotnet="`TagPrefixList`" pulumi-lang-go="`tagPrefixList`" pulumi-lang-python="`tag_prefix_list`" pulumi-lang-yaml="`tagPrefixList`" pulumi-lang-java="`tagPrefixList`">`tag_prefix_list`</span> value or a <span pulumi-lang-nodejs="`tagPatternList`" pulumi-lang-dotnet="`TagPatternList`" pulumi-lang-go="`tagPatternList`" pulumi-lang-python="`tag_pattern_list`" pulumi-lang-yaml="`tagPatternList`" pulumi-lang-java="`tagPatternList`">`tag_pattern_list`</span> value. If you specify <span pulumi-lang-nodejs="`untagged`" pulumi-lang-dotnet="`Untagged`" pulumi-lang-go="`untagged`" pulumi-lang-python="`untagged`" pulumi-lang-yaml="`untagged`" pulumi-lang-java="`untagged`">`untagged`</span>, then you must omit both <span pulumi-lang-nodejs="`tagPrefixList`" pulumi-lang-dotnet="`TagPrefixList`" pulumi-lang-go="`tagPrefixList`" pulumi-lang-python="`tag_prefix_list`" pulumi-lang-yaml="`tagPrefixList`" pulumi-lang-java="`tagPrefixList`">`tag_prefix_list`</span> and <span pulumi-lang-nodejs="`tagPatternList`" pulumi-lang-dotnet="`TagPatternList`" pulumi-lang-go="`tagPatternList`" pulumi-lang-python="`tag_pattern_list`" pulumi-lang-yaml="`tagPatternList`" pulumi-lang-java="`tagPatternList`">`tag_pattern_list`</span>.
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
