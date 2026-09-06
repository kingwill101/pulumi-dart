// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'simple_filter_response.dart';

/// Model that represents a query selector.
class QuerySelectorResponse {
  /// Model that represents available filter types that can be applied to a targets list.
  final pulumi.Input<SimpleFilterResponse?>? filter;
  /// String of the selector ID.
  final pulumi.Input<String> id;
  /// Azure Resource Graph (ARG) Query Language query for target resources.
  final pulumi.Input<String> queryString;
  /// Subscription id list to scope resource query.
  final pulumi.Input<List<String>> subscriptionIds;
  /// Enum of the selector type.
  /// Expected value is 'Query'.
  final pulumi.Input<String> type;

  /// Creates a new [QuerySelectorResponse].
  /// [filter] Model that represents available filter types that can be applied to a targets list.
  /// [id] String of the selector ID.
  /// [queryString] Azure Resource Graph (ARG) Query Language query for target resources.
  /// [subscriptionIds] Subscription id list to scope resource query.
  /// [type] Enum of the selector type.
  const QuerySelectorResponse({
    this.filter,
    required this.id,
    required this.queryString,
    required this.subscriptionIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<SimpleFilterResponse, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': id,
      'queryString': queryString,
      'subscriptionIds': subscriptionIds,
      'type': type,
    };
  }

  factory QuerySelectorResponse.fromMap(Map<String, dynamic> map) {
    return QuerySelectorResponse(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleFilterResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      queryString: pulumi.Input.fromValue(map['queryString'] as String),
      subscriptionIds: pulumi.Input.fromValue((map['subscriptionIds'] as List).cast<String>()),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
