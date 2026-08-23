// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting.
  final pulumi.Input<String> filter;
  /// The type of filter to use.
  final pulumi.Input<String> filterType;

  /// Creates a new [GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting.
  /// [filterType] The type of filter to use.
  const GetRepositoryCreationTemplateImageTagMutabilityExclusionFilter({
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
      filter: pulumi.Input.fromValue(map['filter'] as String),
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
    );
  }
}
