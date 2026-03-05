// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_subscription_rai_policy_args_doc}
/// Arguments for getSubscriptionRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_subscription_rai_policy_args_doc}
class GetSubscriptionRaiPolicyArgs {
  /// The name of the RaiPolicy associated with the Cognitive Services Account
  final pulumi.Input<String> raiPolicyName;

  /// Creates a new [GetSubscriptionRaiPolicyArgs].
  /// [raiPolicyName] The name of the RaiPolicy associated with the Cognitive Services Account
  GetSubscriptionRaiPolicyArgs({
    required this.raiPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'raiPolicyName': raiPolicyName,
    };
  }

  factory GetSubscriptionRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionRaiPolicyArgs(
      raiPolicyName: pulumi.Input.fromValue(map['raiPolicyName'] as String),
    );
  }
}

