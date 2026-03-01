// ignore_for_file: unused_element, unnecessary_cast


class GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting.
  final String filter;
  /// The type of filter to use.
  final String filterType;

  /// Creates a new [GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting.
  /// [filterType] The type of filter to use.
  GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'filterType': filterType,
    };
  }

  factory GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}

