// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_subscription_properties.dart';

/// {@template pulumi_machinelearningservices_marketplace_subscription_args_doc}
/// The set of arguments for MarketplaceSubscription.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_marketplace_subscription_args_doc}
class MarketplaceSubscriptionArgs {
  /// Container name.
  final pulumi.Input<String>? name;
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<MarketplaceSubscriptionProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MarketplaceSubscriptionArgs].
  /// [name] Container name.
  /// [properties] [Required] Additional attributes of the entity.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  const MarketplaceSubscriptionArgs({
    this.name,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'properties': pulumi.Input.mapInputValue<MarketplaceSubscriptionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory MarketplaceSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscriptionArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: pulumi.Input.fromValue(MarketplaceSubscriptionProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
