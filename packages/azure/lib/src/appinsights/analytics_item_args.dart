// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_analytics_item_analytics_item_args_doc}
/// The set of arguments for AnalyticsItem.
/// {@endtemplate}
/// {@macro pulumi_appinsights_analytics_item_analytics_item_args_doc}
class AnalyticsItemArgs {
  /// The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;
  /// The content for the Analytics Item, for example the query text if `type` is `query`.
  final pulumi.Input<String> content;
  /// The alias to use for the function. Required when `type` is `function`.
  final pulumi.Input<String>? functionAlias;
  /// Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  final pulumi.Input<String> scope;
  /// The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  final pulumi.Input<String> type;

  /// Creates a new [AnalyticsItemArgs].
  /// [applicationInsightsId] The ID of the Application Insights component on which the Analytics Item exists. Changing this forces a new resource to be created.
  /// [content] The content for the Analytics Item, for example the query text if `type` is `query`.
  /// [functionAlias] The alias to use for the function. Required when `type` is `function`.
  /// [name] Specifies the name of the Application Insights Analytics Item. Changing this forces a new resource to be created.
  /// [scope] The scope for the Analytics Item. Can be `shared` or `user`. Changing this forces a new resource to be created. Must be `shared` for functions.
  /// [type] The type of Analytics Item to create. Can be one of `query`, `function`, `folder`, `recent`. Changing this forces a new resource to be created.
  AnalyticsItemArgs({
    required String applicationInsightsId,
    required String content,
    String? functionAlias,
    String? name,
    required String scope,
    required String type,
  }) :
      applicationInsightsId = pulumi.Input.asInput<String>(applicationInsightsId),
      content = pulumi.Input.asInput<String>(content),
      functionAlias = pulumi.Input.asOptionalInput<String>(functionAlias),
      name = pulumi.Input.asOptionalInput<String>(name),
      scope = pulumi.Input.asInput<String>(scope),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': applicationInsightsId,
      'content': content,
      'functionAlias': ?functionAlias,
      'name': ?name,
      'scope': scope,
      'type': type,
    };
  }

  factory AnalyticsItemArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsItemArgs(
      applicationInsightsId: map['applicationInsightsId'] as String,
      content: map['content'] as String,
      functionAlias: map['functionAlias'] == null ? null : map['functionAlias'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      scope: map['scope'] as String,
      type: map['type'] as String,
    );
  }
}

