// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_get_local_rulestack_support_info_args_doc}
/// Arguments for getLocalRulestackSupportInfo.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_get_local_rulestack_support_info_args_doc}
class GetLocalRulestackSupportInfoArgs {
  /// email address on behalf of which this API called
  final pulumi.Input<String>? email;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetLocalRulestackSupportInfoArgs].
  /// [email] email address on behalf of which this API called
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetLocalRulestackSupportInfoArgs({
    this.email,
    required this.localRulestackName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetLocalRulestackSupportInfoArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalRulestackSupportInfoArgs(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localRulestackName: pulumi.Input.fromValue(map['localRulestackName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

