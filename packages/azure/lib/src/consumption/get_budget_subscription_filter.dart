// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_subscription_filter_dimension.dart';
import 'get_budget_subscription_filter_not.dart';
import 'get_budget_subscription_filter_tag.dart';

class GetBudgetSubscriptionFilter {
  /// A `dimension` block as defined above.
  final List<GetBudgetSubscriptionFilterDimension> dimensions;
  /// A `not` block as defined below.
  final List<GetBudgetSubscriptionFilterNot> nots;
  /// A `tag` block as defined below.
  final List<GetBudgetSubscriptionFilterTag> tags;

  /// Creates a new [GetBudgetSubscriptionFilter].
  /// [dimensions] A `dimension` block as defined above.
  /// [nots] A `not` block as defined below.
  /// [tags] A `tag` block as defined below.
  GetBudgetSubscriptionFilter({
    required this.dimensions,
    required this.nots,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.encodeList<GetBudgetSubscriptionFilterDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'nots': pulumi.Input.encodeList<GetBudgetSubscriptionFilterNot, Map<String, dynamic>>(nots, (value) => value.toMap()),
      'tags': pulumi.Input.encodeList<GetBudgetSubscriptionFilterTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetBudgetSubscriptionFilter.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionFilter(
      dimensions: pulumi.Input.decodeList<GetBudgetSubscriptionFilterDimension>(map['dimensions'], (value) => GetBudgetSubscriptionFilterDimension.fromMap((value as Map).cast<String, dynamic>())),
      nots: pulumi.Input.decodeList<GetBudgetSubscriptionFilterNot>(map['nots'], (value) => GetBudgetSubscriptionFilterNot.fromMap((value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetBudgetSubscriptionFilterTag>(map['tags'], (value) => GetBudgetSubscriptionFilterTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

