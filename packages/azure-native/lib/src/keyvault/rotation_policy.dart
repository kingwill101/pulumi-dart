// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy_attributes.dart';
import 'lifetime_action.dart';

class RotationPolicy {
  /// The attributes of key rotation policy.
  final KeyRotationPolicyAttributes? attributes;
  /// The lifetimeActions for key rotation action.
  final List<LifetimeAction>? lifetimeActions;

  /// Creates a new [RotationPolicy].
  /// [attributes] The attributes of key rotation policy.
  /// [lifetimeActions] The lifetimeActions for key rotation action.
  RotationPolicy({
    this.attributes,
    this.lifetimeActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : attributes!.toMap(),
      'lifetimeActions': ?lifetimeActions == null ? null : pulumi.Input.encodeList<LifetimeAction, Map<String, dynamic>>(lifetimeActions!, (value) => value.toMap()),
    };
  }

  factory RotationPolicy.fromMap(Map<String, dynamic> map) {
    return RotationPolicy(
      attributes: map['attributes'] == null ? null : KeyRotationPolicyAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>()),
      lifetimeActions: map['lifetimeActions'] == null ? null : pulumi.Input.decodeList<LifetimeAction>(map['lifetimeActions'], (value) => LifetimeAction.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

