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
    required this.linkedSubscriptionId,
    this.linkedSubscriptionName,
    this.location,
    required this.registrationResourceId,
    required this.resourceGroup,
  });

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
      linkedSubscriptionId: pulumi.Input.fromValue(map['linkedSubscriptionId'] as String),
      linkedSubscriptionName: (() { final guardedValue = map['linkedSubscriptionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationResourceId: pulumi.Input.fromValue(map['registrationResourceId'] as String),
      resourceGroup: pulumi.Input.fromValue(map['resourceGroup'] as String),
    );
  }
}

