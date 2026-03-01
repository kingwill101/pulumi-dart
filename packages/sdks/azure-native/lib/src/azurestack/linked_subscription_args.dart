// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_azurestack_linked_subscription_args_doc}
/// The set of arguments for LinkedSubscription.
/// {@endtemplate}
/// {@macro pulumi_azurestack_linked_subscription_args_doc}
class LinkedSubscriptionArgs {
  /// The identifier associated with the device subscription.
  final pulumi.Input<String> linkedSubscriptionId;
  /// Name of the Linked Subscription resource.
  final pulumi.Input<String>? linkedSubscriptionName;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// The identifier associated with the device registration.
  final pulumi.Input<String> registrationResourceId;
  /// Name of the resource group.
  final pulumi.Input<String> resourceGroup;

  /// Creates a new [LinkedSubscriptionArgs].
  /// [linkedSubscriptionId] The identifier associated with the device subscription.
  /// [linkedSubscriptionName] Name of the Linked Subscription resource.
  /// [location] Location of the resource.
  /// [registrationResourceId] The identifier associated with the device registration.
  /// [resourceGroup] Name of the resource group.
  LinkedSubscriptionArgs({
    required pulumi.Output<String> linkedSubscriptionId,
    pulumi.Output<String>? linkedSubscriptionName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> registrationResourceId,
    required pulumi.Output<String> resourceGroup,
  }) :
      linkedSubscriptionId = pulumi.Input.asInput<String>(linkedSubscriptionId),
      linkedSubscriptionName = pulumi.Input.asOptionalInput<String>(linkedSubscriptionName),
      location = pulumi.Input.asOptionalInput<String>(location),
      registrationResourceId = pulumi.Input.asInput<String>(registrationResourceId),
      resourceGroup = pulumi.Input.asInput<String>(resourceGroup);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedSubscriptionId': linkedSubscriptionId,
      'linkedSubscriptionName': ?linkedSubscriptionName,
      'location': ?location,
      'registrationResourceId': registrationResourceId,
      'resourceGroup': resourceGroup,
    };
  }

  factory LinkedSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return LinkedSubscriptionArgs(
      linkedSubscriptionId: pulumi.Output.create<String>(map['linkedSubscriptionId'] as String),
      linkedSubscriptionName: map['linkedSubscriptionName'] == null ? null : pulumi.Output.create<String>(map['linkedSubscriptionName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      registrationResourceId: pulumi.Output.create<String>(map['registrationResourceId'] as String),
      resourceGroup: pulumi.Output.create<String>(map['resourceGroup'] as String),
    );
  }
}

