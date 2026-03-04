// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_get_linked_subscription_args_doc}
/// Arguments for getLinkedSubscription.
/// {@endtemplate}
/// {@macro pulumi_azurestack_get_linked_subscription_args_doc}
class GetLinkedSubscriptionArgs {
  /// Name of the Linked Subscription resource.
  final pulumi.Input<String> linkedSubscriptionName;

  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [GetLinkedSubscriptionArgs].
  /// [linkedSubscriptionName] Name of the Linked Subscription resource.
  /// [resourceGroup] Name of the resource group.
  GetLinkedSubscriptionArgs({
    required this.linkedSubscriptionName,
    required this.resourceGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedSubscriptionName': linkedSubscriptionName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetLinkedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedSubscriptionArgs(
      linkedSubscriptionName: pulumi.Input.fromValue(
        map['linkedSubscriptionName'] as String,
      ),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}
