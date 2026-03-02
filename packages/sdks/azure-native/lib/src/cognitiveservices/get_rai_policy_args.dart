// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_rai_policy_args_doc}
/// Arguments for getRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_rai_policy_args_doc}
class GetRaiPolicyArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the RaiPolicy associated with the Cognitive Services Account
  final pulumi.Input<String> raiPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetRaiPolicyArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [raiPolicyName] The name of the RaiPolicy associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetRaiPolicyArgs({
    required this.accountName,
    required this.raiPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'raiPolicyName': raiPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiPolicyArgs(
      accountName: (map['accountName'] as String).input(),
      raiPolicyName: (map['raiPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

