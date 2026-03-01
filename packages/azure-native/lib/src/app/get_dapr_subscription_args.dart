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
  GetDaprSubscriptionArgs({
    required String environmentName,
    required String name,
    required String resourceGroupName,
  }) :
      environmentName = pulumi.Input.asInput<String>(environmentName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentName': environmentName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDaprSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetDaprSubscriptionArgs(
      environmentName: map['environmentName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

