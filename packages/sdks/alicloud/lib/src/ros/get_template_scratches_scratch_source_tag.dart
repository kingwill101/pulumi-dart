// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateScratchesScratchSourceTag {
  /// Source label.
  final Map<String, String> resourceTags;
  /// Source resource type filter list.
  final List<String> resourceTypeFilters;

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
      resourceTags: (map['resourceTags'] as Map).cast<String, String>(),
      resourceTypeFilters: (map['resourceTypeFilters'] as List).cast<String>(),
    );
  }
}

