// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy_attributes.dart';
import 'lifetime_action.dart';

class RotationPolicy {
  /// The attributes of key rotation policy.
  final pulumi.Input<KeyRotationPolicyAttributes?>? attributes;
  /// The lifetimeActions for key rotation action.
  final pulumi.Input<List<LifetimeAction>?>? lifetimeActions;

  /// Creates a new [RotationPolicy].
  /// [attributes] The attributes of key rotation policy.
  /// [lifetimeActions] The lifetimeActions for key rotation action.
  const RotationPolicy({
    this.attributes,
    this.lifetimeActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<KeyRotationPolicyAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'lifetimeActions': ?pulumi.Input.mapOptionalInputValue<List<LifetimeAction>, List<Map<String, dynamic>>>(lifetimeActions, (value) => pulumi.Input.encodeList<LifetimeAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RotationPolicy.fromMap(Map<String, dynamic> map) {
    return RotationPolicy(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyRotationPolicyAttributes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifetimeActions: (() { final guardedValue = map['lifetimeActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifetimeAction>(guardedValue, (value) => LifetimeAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
