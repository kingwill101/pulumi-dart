// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_computelimit_guest_subscription_args_doc}
/// The set of arguments for GuestSubscription.
/// {@endtemplate}
/// {@macro pulumi_computelimit_guest_subscription_args_doc}
class GuestSubscriptionArgs {
  /// The name of the GuestSubscription
  final pulumi.Input<String>? guestSubscriptionId;

  /// The name of the Azure region.
  final pulumi.Input<String> location;

  /// Creates a new [GuestSubscriptionArgs].
  /// [guestSubscriptionId] The name of the GuestSubscription
  /// [location] The name of the Azure region.
  GuestSubscriptionArgs({this.guestSubscriptionId, required this.location});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guestSubscriptionId': ?guestSubscriptionId,
      'location': location,
    };
  }

  factory GuestSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GuestSubscriptionArgs(
      guestSubscriptionId: (() {
        final guardedValue = map['guestSubscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}
