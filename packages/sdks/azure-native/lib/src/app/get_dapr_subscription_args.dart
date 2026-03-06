// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_app_get_dapr_subscription_args_doc}
/// Arguments for getDaprSubscription.
/// {@endtemplate}
/// {@macro pulumi_app_get_dapr_subscription_args_doc}
class GetDaprSubscriptionArgs {
  /// Name of the Managed Environment.
  final pulumi.Input<String> environmentName;
  /// Name of the Dapr subscription.
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDaprSubscriptionArgs].
  /// [environmentName] Name of the Managed Environment.
  /// [name] Name of the Dapr subscription.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetDaprSubscriptionArgs({
    required this.environmentName,
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDaprSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDaprSubscriptionArgs(
      environmentName: pulumi.Input.fromValue(map['environmentName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

