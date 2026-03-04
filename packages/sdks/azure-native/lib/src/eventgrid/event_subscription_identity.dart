// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity information with the event subscription.
class EventSubscriptionIdentity {
  /// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  final pulumi.Input<String>? type;

  /// The user identity associated with the resource.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [EventSubscriptionIdentity].
  /// [type] The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  /// [userAssignedIdentity] The user identity associated with the resource.
  EventSubscriptionIdentity({this.type, this.userAssignedIdentity});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EventSubscriptionIdentity.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentity: (() {
        final guardedValue = map['userAssignedIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
