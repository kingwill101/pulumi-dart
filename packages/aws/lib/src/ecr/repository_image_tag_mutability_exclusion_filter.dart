// ignore_for_file: unused_element, unnecessary_cast

class RepositoryImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  final String filter;

  /// The type of filter to use. Must be `WILDCARD`.
  final String filterType;

  /// Creates a new [RepositoryImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  /// [filterType] The type of filter to use. Must be `WILDCARD`.
  RepositoryImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': filter, 'filterType': filterType};
  }

  factory RepositoryImageTagMutabilityExclusionFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return RepositoryImageTagMutabilityExclusionFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
