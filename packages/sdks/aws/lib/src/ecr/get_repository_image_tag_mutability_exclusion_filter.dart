// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting.
  final pulumi.Input<String> filter;
  /// The type of filter to use.
  final pulumi.Input<String> filterType;

  /// Creates a new [GetRepositoryImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting.
  /// [filterType] The type of filter to use.
  GetRepositoryImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'filterType': filterType,
    };
  }

  factory GetRepositoryImageTagMutabilityExclusionFilter.fromMap(Map<String, dynamic> map) {
    return GetRepositoryImageTagMutabilityExclusionFilter(
      filter: (map['filter'] as String).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

