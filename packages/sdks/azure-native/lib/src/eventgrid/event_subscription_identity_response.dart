// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity information with the event subscription.
class EventSubscriptionIdentityResponse {
  /// The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  final pulumi.Input<String>? type;
  /// The user identity associated with the resource.
  final pulumi.Input<String>? userAssignedIdentity;

  /// Creates a new [EventSubscriptionIdentityResponse].
  /// [type] The type of managed identity used. Can be either 'SystemAssigned' or 'UserAssigned'.
  /// [userAssignedIdentity] The user identity associated with the resource.
  EventSubscriptionIdentityResponse({
    this.type,
    this.userAssignedIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentity': ?userAssignedIdentity,
    };
  }

  factory EventSubscriptionIdentityResponse.fromMap(Map<String, dynamic> map) {
    return EventSubscriptionIdentityResponse(
      type: map['type'] == null ? null : (map['type'] as String).input(),
      userAssignedIdentity: map['userAssignedIdentity'] == null ? null : (map['userAssignedIdentity'] as String).input(),
    );
  }
}

