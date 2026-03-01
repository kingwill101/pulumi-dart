// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_conditional_credit_args_doc}
/// Arguments for getConditionalCredit.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_conditional_credit_args_doc}
class GetConditionalCreditArgs {
  /// Name of the conditional credit
  final pulumi.Input<String> conditionalCreditName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConditionalCreditArgs].
  /// [conditionalCreditName] Name of the conditional credit
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConditionalCreditArgs({
    required pulumi.Output<String> conditionalCreditName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      conditionalCreditName = pulumi.Input.asInput<String>(conditionalCreditName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionalCreditName': conditionalCreditName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConditionalCreditArgs.fromMap(Map<String, dynamic> map) {
    return GetConditionalCreditArgs(
      conditionalCreditName: pulumi.Output.create<String>(map['conditionalCreditName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

