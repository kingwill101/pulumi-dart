// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_insights_component_analytics_item_properties.dart';

/// {@template pulumi_applicationinsights_analytics_item_args_doc}
/// The set of arguments for AnalyticsItem.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_analytics_item_args_doc}
class AnalyticsItemArgs {
  /// The content of this item
  final pulumi.Input<String>? content;
  /// Internally assigned unique id of the item definition.
  final pulumi.Input<String>? id;
  /// The user-defined name of the item.
  final pulumi.Input<String>? name;
  /// Flag indicating whether or not to force save an item. This allows overriding an item if it already exists.
  final pulumi.Input<bool>? overrideItem;
  /// A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
  final pulumi.Input<ApplicationInsightsComponentAnalyticsItemProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;
  /// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final pulumi.Input<String>? scope;
  /// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final pulumi.Input<String> scopePath;
  /// Enum indicating the type of the Analytics item.
  final pulumi.Input<String>? type;

  /// Creates a new [AnalyticsItemArgs].
  /// [content] The content of this item
  /// [id] Internally assigned unique id of the item definition.
  /// [name] The user-defined name of the item.
  /// [overrideItem] Flag indicating whether or not to force save an item. This allows overriding an item if it already exists.
  /// [properties] A set of properties that can be defined in the context of a specific item type. Each type may have its own properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [scope] Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  /// [scopePath] Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  /// [type] Enum indicating the type of the Analytics item.
  AnalyticsItemArgs({
    this.content,
    this.id,
    this.name,
    this.overrideItem,
    this.properties,
    required this.resourceGroupName,
    required this.resourceName,
    this.scope,
    required this.scopePath,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'id': ?id,
      'name': ?name,
      'overrideItem': ?overrideItem,
      'properties': ?pulumi.Input.mapOptionalInputValue<ApplicationInsightsComponentAnalyticsItemProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'scope': ?scope,
      'scopePath': scopePath,
      'type': ?type,
    };
  }

  factory AnalyticsItemArgs.fromMap(Map<String, dynamic> map) {
    return AnalyticsItemArgs(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      overrideItem: map['overrideItem'] == null ? null : (map['overrideItem']! as bool).input(),
      properties: map['properties'] == null ? null : (ApplicationInsightsComponentAnalyticsItemProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      scopePath: (map['scopePath'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

