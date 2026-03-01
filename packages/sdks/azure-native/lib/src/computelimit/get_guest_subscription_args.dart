// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computelimit_get_guest_subscription_args_doc}
/// Arguments for getGuestSubscription.
/// {@endtemplate}
/// {@macro pulumi_computelimit_get_guest_subscription_args_doc}
class GetGuestSubscriptionArgs {
  /// The name of the GuestSubscription
  final pulumi.Input<String> guestSubscriptionId;
  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// Creates a new [GetGuestSubscriptionArgs].
  /// [guestSubscriptionId] The name of the GuestSubscription
  /// [location] The name of the Azure region.
  GetGuestSubscriptionArgs({
    required pulumi.Output<String> guestSubscriptionId,
    required pulumi.Output<String> location,
  }) :
      guestSubscriptionId = pulumi.Input.asInput<String>(guestSubscriptionId),
      location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestSubscriptionId': guestSubscriptionId,
      'location': location,
    };
  }

  factory GetGuestSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetGuestSubscriptionArgs(
      guestSubscriptionId: pulumi.Output.create<String>(map['guestSubscriptionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
    );
  }
}

