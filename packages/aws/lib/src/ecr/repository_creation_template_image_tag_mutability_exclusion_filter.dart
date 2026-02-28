// ignore_for_file: unused_element, unnecessary_cast

class RepositoryCreationTemplateImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  final String filter;

  /// The type of filter to use. Must be `WILDCARD`.
  final String filterType;

  /// Creates a new [RepositoryCreationTemplateImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  /// [filterType] The type of filter to use. Must be `WILDCARD`.
  RepositoryCreationTemplateImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['filterType'] = filterType;
    return map;
  }

  factory RepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap(
      Map<String, dynamic> map) {
    return RepositoryCreationTemplateImageTagMutabilityExclusionFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
