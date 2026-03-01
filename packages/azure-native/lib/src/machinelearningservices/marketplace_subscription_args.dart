// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'marketplace_subscription_machinelearningservices.dart';

/// {@template pulumi_machinelearningservices_marketplace_subscription_args_doc}
/// The set of arguments for MarketplaceSubscription.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_marketplace_subscription_args_doc}
class MarketplaceSubscriptionArgs {
  /// [Required] Additional attributes of the entity.
  final pulumi.Input<MarketplaceSubscriptionMachinelearningservices> marketplaceSubscriptionProperties;
  /// Marketplace Subscription name.
  final pulumi.Input<String>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MarketplaceSubscriptionArgs].
  /// [marketplaceSubscriptionProperties] [Required] Additional attributes of the entity.
  /// [name] Marketplace Subscription name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  MarketplaceSubscriptionArgs({
    required MarketplaceSubscriptionMachinelearningservices marketplaceSubscriptionProperties,
    String? name,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      marketplaceSubscriptionProperties = pulumi.Input.asInput<MarketplaceSubscriptionMachinelearningservices>(marketplaceSubscriptionProperties),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplaceSubscriptionProperties': marketplaceSubscriptionProperties,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory MarketplaceSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return MarketplaceSubscriptionArgs(
      marketplaceSubscriptionProperties: map['marketplaceSubscriptionProperties'] as MarketplaceSubscriptionMachinelearningservices,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

