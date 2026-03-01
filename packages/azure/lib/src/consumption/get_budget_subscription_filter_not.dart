// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_budget_subscription_filter_not_dimension.dart';
import 'get_budget_subscription_filter_not_tag.dart';

class GetBudgetSubscriptionFilterNot {
  /// A `dimension` block as defined above.
  final List<GetBudgetSubscriptionFilterNotDimension> dimensions;
  /// A `tag` block as defined below.
  final List<GetBudgetSubscriptionFilterNotTag> tags;

  /// Creates a new [GetBudgetSubscriptionFilterNot].
  /// [dimensions] A `dimension` block as defined above.
  /// [tags] A `tag` block as defined below.
  GetBudgetSubscriptionFilterNot({
    required this.dimensions,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dimensions': pulumi.Input.encodeList<GetBudgetSubscriptionFilterNotDimension, Map<String, dynamic>>(dimensions, (value) => value.toMap()),
      'tags': pulumi.Input.encodeList<GetBudgetSubscriptionFilterNotTag, Map<String, dynamic>>(tags, (value) => value.toMap()),
    };
  }

  factory GetBudgetSubscriptionFilterNot.fromMap(Map<String, dynamic> map) {
    return GetBudgetSubscriptionFilterNot(
      dimensions: pulumi.Input.decodeList<GetBudgetSubscriptionFilterNotDimension>(map['dimensions'], (value) => GetBudgetSubscriptionFilterNotDimension.fromMap((value as Map).cast<String, dynamic>())),
      tags: pulumi.Input.decodeList<GetBudgetSubscriptionFilterNotTag>(map['tags'], (value) => GetBudgetSubscriptionFilterNotTag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

