// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_rule_correlation_filter.dart';

/// {@template pulumi_eventhub_subscription_rule_subscription_rule_args_doc}
/// The set of arguments for SubscriptionRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_subscription_rule_subscription_rule_args_doc}
class SubscriptionRuleArgs {
  /// Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage.
  final pulumi.Input<String>? action;
  /// A `correlation_filter` block as documented below to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`.
  final pulumi.Input<SubscriptionRuleCorrelationFilter>? correlationFilter;
  /// Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`.
  final pulumi.Input<String> filterType;
  /// Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`.
  final pulumi.Input<String>? sqlFilter;
  /// The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [SubscriptionRuleArgs].
  /// [action] Represents set of actions written in SQL language-based syntax that is performed against a BrokeredMessage.
  /// [correlationFilter] A `correlation_filter` block as documented below to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `CorrelationFilter`.
  /// [filterType] Type of filter to be applied to a BrokeredMessage. Possible values are `SqlFilter` and `CorrelationFilter`.
  /// [name] Specifies the name of the ServiceBus Subscription Rule. Changing this forces a new resource to be created.
  /// [sqlFilter] Represents a filter written in SQL language-based syntax that to be evaluated against a BrokeredMessage. Required when `filter_type` is set to `SqlFilter`.
  /// [subscriptionId] The ID of the ServiceBus Subscription in which this Rule should be created. Changing this forces a new resource to be created.
  SubscriptionRuleArgs({
    String? action,
    SubscriptionRuleCorrelationFilter? correlationFilter,
    required String filterType,
    String? name,
    String? sqlFilter,
    required String subscriptionId,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      correlationFilter = pulumi.Input.asOptionalInput<SubscriptionRuleCorrelationFilter>(correlationFilter),
      filterType = pulumi.Input.asInput<String>(filterType),
      name = pulumi.Input.asOptionalInput<String>(name),
      sqlFilter = pulumi.Input.asOptionalInput<String>(sqlFilter),
      subscriptionId = pulumi.Input.asInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'correlationFilter': ?pulumi.Input.mapOptionalInputValue<SubscriptionRuleCorrelationFilter, Map<String, dynamic>>(correlationFilter, (value) => value.toMap()),
      'filterType': filterType,
      'name': ?name,
      'sqlFilter': ?sqlFilter,
      'subscriptionId': subscriptionId,
    };
  }

  factory SubscriptionRuleArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionRuleArgs(
      action: map['action'] == null ? null : map['action'] as String,
      correlationFilter: map['correlationFilter'] == null ? null : SubscriptionRuleCorrelationFilter.fromMap((map['correlationFilter'] as Map).cast<String, dynamic>()),
      filterType: map['filterType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      sqlFilter: map['sqlFilter'] == null ? null : map['sqlFilter'] as String,
      subscriptionId: map['subscriptionId'] as String,
    );
  }
}

