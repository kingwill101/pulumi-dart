// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WafPolicy resources.
class WafPolicyState {
  /// The type of protection policy. Valid values: `waf_group`, `custom_acl`, `whitelist`, `ip_blacklist`, `region_block`.
  final pulumi.Input<String>? defenseScene;
  /// The name of the protection policy. The name must be 1 to 64 characters in length, and can contain letters, digits,and underscores (_).
  final pulumi.Input<String>? policyName;
  /// The type of the protection policy. Valid values: `default`, `custom`.
  final pulumi.Input<String>? policyType;
  /// The status of the resource. Valid values: `on`, `off`.
  final pulumi.Input<String>? status;

  /// Creates a new [WafPolicyState].
  /// [defenseScene] The type of protection policy. Valid values: `waf_group`, `custom_acl`, `whitelist`, `ip_blacklist`, `region_block`.
  /// [policyName] The name of the protection policy. The name must be 1 to 64 characters in length, and can contain letters, digits,and underscores (_).
  /// [policyType] The type of the protection policy. Valid values: `default`, `custom`.
  /// [status] The status of the resource. Valid values: `on`, `off`.
  WafPolicyState({
    this.defenseScene,
    this.policyName,
    this.policyType,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defenseScene': ?defenseScene,
      'policyName': ?policyName,
      'policyType': ?policyType,
      'status': ?status,
    };
  }

  factory WafPolicyState.fromMap(Map<String, dynamic> map) {
    return WafPolicyState(
      defenseScene: (() { final guardedValue = map['defenseScene']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

