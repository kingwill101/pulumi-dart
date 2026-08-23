// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_rotation_policy_attributes_response.dart';
import 'lifetime_action_response.dart';

class RotationPolicyResponse {
  /// The attributes of key rotation policy.
  final pulumi.Input<KeyRotationPolicyAttributesResponse>? attributes;
  /// The lifetimeActions for key rotation action.
  final pulumi.Input<List<LifetimeActionResponse>>? lifetimeActions;

  /// Creates a new [RotationPolicyResponse].
  /// [attributes] The attributes of key rotation policy.
  /// [lifetimeActions] The lifetimeActions for key rotation action.
  const RotationPolicyResponse({
    this.attributes,
    this.lifetimeActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<KeyRotationPolicyAttributesResponse, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'lifetimeActions': ?pulumi.Input.mapOptionalInputValue<List<LifetimeActionResponse>, List<Map<String, dynamic>>>(lifetimeActions, (value) => pulumi.Input.encodeList<LifetimeActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RotationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RotationPolicyResponse(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyRotationPolicyAttributesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lifetimeActions: (() { final guardedValue = map['lifetimeActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LifetimeActionResponse>(guardedValue, (value) => LifetimeActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
