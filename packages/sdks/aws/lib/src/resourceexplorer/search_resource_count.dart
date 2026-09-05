// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SearchResourceCount {
  /// Indicates whether the TotalResources value represents an exhaustive count of search results. If True, it indicates that the search was exhaustive. Every resource that matches the query was counted. If False, then the search reached the limit of 1,000 matching results, and stopped counting.
  final pulumi.Input<bool> complete;
  /// Number of resources that match the search query. This value can't exceed 1,000. If there are more than 1,000 resources that match the query, then only 1,000 are counted and the Complete field is set to false. We recommend that you refine your query to return a smaller number of results.
  final pulumi.Input<int> totalResources;

  /// Creates a new [SearchResourceCount].
  /// [complete] Indicates whether the TotalResources value represents an exhaustive count of search results. If True, it indicates that the search was exhaustive. Every resource that matches the query was counted. If False, then the search reached the limit of 1,000 matching results, and stopped counting.
  /// [totalResources] Number of resources that match the search query. This value can't exceed 1,000. If there are more than 1,000 resources that match the query, then only 1,000 are counted and the Complete field is set to false. We recommend that you refine your query to return a smaller number of results.
  const SearchResourceCount({
    required this.complete,
    required this.totalResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complete': complete,
      'totalResources': totalResources,
    };
  }

  factory SearchResourceCount.fromMap(Map<String, dynamic> map) {
    return SearchResourceCount(
      complete: pulumi.Input.fromValue(map['complete'] as bool),
      totalResources: pulumi.Input.fromValue((map['totalResources'] as num).toInt()),
    );
  }
}
