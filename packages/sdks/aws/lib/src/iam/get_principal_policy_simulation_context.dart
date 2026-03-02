// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPrincipalPolicySimulationContext {
  /// The context _condition key_ to set.
  ///
  /// If you have policies containing `Condition` elements or using dynamic interpolations then you will need to provide suitable values for each condition key your policies use. See [Actions, resources, and condition keys for AWS services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) to find the various condition keys that are normally provided for real requests to each action of each AWS service.
  final pulumi.Input<String> key;
  /// An IAM value type that determines how the policy simulator will interpret the strings given in `values`.
  ///
  /// For more information, see the `ContextKeyType` field of [`iam.ContextEntry`](https://docs.aws.amazon.com/IAM/latest/APIReference/API_ContextEntry.html) in the underlying API.
  final pulumi.Input<String> type;
  /// A set of one or more values for this context entry.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetPrincipalPolicySimulationContext].
  /// [key] The context _condition key_ to set.
  /// [type] An IAM value type that determines how the policy simulator will interpret the strings given in `values`.
  /// [values] A set of one or more values for this context entry.
  GetPrincipalPolicySimulationContext({
    required this.key,
    required this.type,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'type': type,
      'values': values,
    };
  }

  factory GetPrincipalPolicySimulationContext.fromMap(Map<String, dynamic> map) {
    return GetPrincipalPolicySimulationContext(
      key: (map['key'] as String).input(),
      type: (map['type'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

