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
    pulumi.Output<BgpPolicyContent>? content,
    pulumi.Output<String>? policyName,
    pulumi.Output<String>? type,
  }) :
      content = pulumi.Input.asOptionalInput<BgpPolicyContent>(content),
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<BgpPolicyContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'policyName': ?policyName,
      'type': ?type,
    };
  }

  factory BgpPolicyState.fromMap(Map<String, dynamic> map) {
    return BgpPolicyState(
      content: map['content'] == null ? null : pulumi.Output.create<BgpPolicyContent>(BgpPolicyContent.fromMap((map['content'] as Map).cast<String, dynamic>())),
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

