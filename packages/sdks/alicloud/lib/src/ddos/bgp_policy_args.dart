// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bgp_policy_content.dart';

/// {@template pulumi_ddos_bgp_policy_bgp_policy_args_doc}
/// The set of arguments for BgpPolicy.
/// {@endtemplate}
/// {@macro pulumi_ddos_bgp_policy_bgp_policy_args_doc}
class BgpPolicyArgs {
  /// Configuration Content See `content` below.
  final pulumi.Input<BgpPolicyContent>? content;

  /// The name of the resource
  final pulumi.Input<String> policyName;

  /// Type
  final pulumi.Input<String> type;

  /// Creates a new [BgpPolicyArgs].
  /// [content] Configuration Content See `content` below.
  /// [policyName] The name of the resource
  /// [type] Type
  BgpPolicyArgs({this.content, required this.policyName, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content':
          ?pulumi.Input.mapOptionalInputValue<
            BgpPolicyContent,
            Map<String, dynamic>
          >(content, (value) => value.toMap()),
      'policyName': policyName,
      'type': type,
    };
  }

  factory BgpPolicyArgs.fromMap(Map<String, dynamic> map) {
    return BgpPolicyArgs(
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          BgpPolicyContent.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      policyName: pulumi.Input.fromValue(map['policyName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
