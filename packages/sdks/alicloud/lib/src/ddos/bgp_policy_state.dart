// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_content.dart';

/// Input properties used for looking up and filtering BgpPolicy resources.
class BgpPolicyState {
  /// Configuration Content See `content` below.
  final pulumi.Input<BgpPolicyContent>? content;
  /// The name of the resource
  final pulumi.Input<String>? policyName;
  /// Type
  final pulumi.Input<String>? type;

  /// Creates a new [BgpPolicyState].
  /// [content] Configuration Content See `content` below.
  /// [policyName] The name of the resource
  /// [type] Type
  BgpPolicyState({
    this.content,
    this.policyName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<BgpPolicyContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'policyName': ?policyName,
      'type': ?type,
    };
  }

  factory BgpPolicyState.fromMap(Map<String, dynamic> map) {
    return BgpPolicyState(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BgpPolicyContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policyName: (() { final guardedValue = map['policyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

