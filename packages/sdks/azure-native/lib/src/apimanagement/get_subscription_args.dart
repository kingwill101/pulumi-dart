// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_subscription_args_doc}
/// Arguments for getSubscription.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_subscription_args_doc}
class GetSubscriptionArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  final pulumi.Input<String> sid;

  /// Creates a new [GetSubscriptionArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [sid] Subscription entity Identifier. The entity represents the association between a user and a product in API Management.
  GetSubscriptionArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> sid,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      sid = pulumi.Input.asInput<String>(sid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'sid': sid,
    };
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      sid: pulumi.Output.create<String>(map['sid'] as String),
    );
  }
}

