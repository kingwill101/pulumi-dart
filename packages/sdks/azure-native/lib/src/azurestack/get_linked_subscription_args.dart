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
    required pulumi.Output<String> linkedSubscriptionName,
    required pulumi.Output<String> resourceGroup,
  }) :
      linkedSubscriptionName = pulumi.Input.asInput<String>(linkedSubscriptionName),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedSubscriptionName': linkedSubscriptionName,
      'resourceGroup': resourceGroup,
    };
  }

  factory GetLinkedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkedSubscriptionArgs(
      linkedSubscriptionName: pulumi.Output.create<String>(map['linkedSubscriptionName'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

