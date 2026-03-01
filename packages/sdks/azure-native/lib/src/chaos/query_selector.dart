// ignore_for_file: unused_element, unnecessary_cast

import 'simple_filter.dart';

/// Model that represents a query selector.
class QuerySelector {
  /// Model that represents available filter types that can be applied to a targets list.
  final SimpleFilter? filter;
  /// String of the selector ID.
  final String id;
  /// Azure Resource Graph (ARG) Query Language query for target resources.
  final String queryString;
  /// Subscription id list to scope resource query.
  final List<String> subscriptionIds;
  /// Enum of the selector type.
  /// Expected value is 'Query'.
  final String type;

  /// Creates a new [QuerySelector].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [queryString] Azure Resource Graph (ARG) Query Language query for target resources.
  /// [subscriptionIds] Subscription id list to scope resource query.
  /// [type] Enum of the selector type.
  QuerySelector({
    this.filter,
    required this.id,
    required this.queryString,
    required this.subscriptionIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter == null ? null : filter!.toMap(),
      'id': id,
      'queryString': queryString,
      'subscriptionIds': subscriptionIds,
      'type': type,
    };
  }

  factory QuerySelector.fromMap(Map<String, dynamic> map) {
    return QuerySelector(
      filter: map['filter'] == null ? null : SimpleFilter.fromMap((map['filter'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      queryString: map['queryString'] as String,
      subscriptionIds: (map['subscriptionIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

