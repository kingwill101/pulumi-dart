// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryCreationTemplateImageTagMutabilityExclusionFilter {
  /// The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  final pulumi.Input<String> filter;
  /// The type of filter to use. Must be `WILDCARD`.
  final pulumi.Input<String> filterType;

  /// Creates a new [RepositoryCreationTemplateImageTagMutabilityExclusionFilter].
  /// [filter] The filter pattern to use for excluding image tags from the mutability setting. Must contain only letters, numbers, and special characters (._*-). Each filter can be up to 128 characters long and can contain a maximum of 2 wildcards (*).
  /// [filterType] The type of filter to use. Must be `WILDCARD`.
  RepositoryCreationTemplateImageTagMutabilityExclusionFilter({
    required this.filter,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': filter,
      'filterType': filterType,
    };
  }

  factory RepositoryCreationTemplateImageTagMutabilityExclusionFilter.fromMap(Map<String, dynamic> map) {
    return RepositoryCreationTemplateImageTagMutabilityExclusionFilter(
      filter: (map['filter'] as String).input(),
      filterType: (map['filterType'] as String).input(),
    );
  }
}

