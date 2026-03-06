// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingbenefits_get_credit_args_doc}
/// Arguments for getCredit.
/// {@endtemplate}
/// {@macro pulumi_billingbenefits_get_credit_args_doc}
class GetCreditArgs {
  /// Name of the credit
  final pulumi.Input<String> creditName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCreditArgs].
  /// [creditName] Name of the credit
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCreditArgs({
    required this.creditName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creditName': creditName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCreditArgs.fromMap(Map<String, dynamic> map) {
    return GetCreditArgs(
      creditName: pulumi.Input.fromValue(map['creditName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

