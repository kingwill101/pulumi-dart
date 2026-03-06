// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_analytics_item_args_doc}
/// Arguments for getAnalyticsItem.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_analytics_item_args_doc}
class GetAnalyticsItemArgs {
  /// The Id of a specific item defined in the Application Insights component
  final pulumi.Input<String>? id;
  /// The name of a specific item defined in the Application Insights component
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Application Insights component resource.
  final pulumi.Input<String> resourceName;
  /// Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  final pulumi.Input<String> scopePath;

  /// Creates a new [GetAnalyticsItemArgs].
  /// [id] The Id of a specific item defined in the Application Insights component
  /// [name] The name of a specific item defined in the Application Insights component
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [scopePath] Enum indicating if this item definition is owned by a specific user or is shared between all users with access to the Application Insights component.
  const GetAnalyticsItemArgs({
    this.id,
    this.name,
    required this.resourceGroupName,
    required this.resourceName,
    required this.scopePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'scopePath': scopePath,
    };
  }

  factory GetAnalyticsItemArgs.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsItemArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      scopePath: pulumi.Input.fromValue(map['scopePath'] as String),
    );
  }
}

