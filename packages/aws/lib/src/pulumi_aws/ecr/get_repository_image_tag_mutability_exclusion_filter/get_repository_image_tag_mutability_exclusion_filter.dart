// ignore_for_file: unused_element, unnecessary_cast

class GetRepositoryImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting.
  final String filter;

  /// The type of filter to use.
  final String filterType;

  GetRepositoryImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filter'] = filter;
    map['filterType'] = filterType;
    return map;
  }

  factory GetRepositoryImageTagMutabilityExclusionFilter.fromMap(
      Map<String, dynamic> map) {
    return GetRepositoryImageTagMutabilityExclusionFilter(
      filter: map['filter'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
