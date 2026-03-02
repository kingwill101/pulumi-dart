// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTemplateScratchesScratchSourceTag {
  /// Source label.
  final pulumi.Input<Map<String, String>> resourceTags;
  /// Source resource type filter list.
  final pulumi.Input<List<String>> resourceTypeFilters;

  /// Creates a new [GetTemplateScratchesScratchSourceTag].
  /// [resourceTags] Source label.
  /// [resourceTypeFilters] Source resource type filter list.
  GetTemplateScratchesScratchSourceTag({
    required this.resourceTags,
    required this.resourceTypeFilters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTags': resourceTags,
      'resourceTypeFilters': resourceTypeFilters,
    };
  }

  factory GetTemplateScratchesScratchSourceTag.fromMap(Map<String, dynamic> map) {
    return GetTemplateScratchesScratchSourceTag(
      resourceTags: ((map['resourceTags'] as Map).cast<String, String>()).input(),
      resourceTypeFilters: ((map['resourceTypeFilters'] as List).cast<String>()).input(),
    );
  }
}

