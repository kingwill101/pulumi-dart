// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datalakeanalytics_get_compute_policy_args_doc}
/// Arguments for getComputePolicy.
/// {@endtemplate}
/// {@macro pulumi_datalakeanalytics_get_compute_policy_args_doc}
class GetComputePolicyArgs {
  /// The name of the Data Lake Analytics account.
  final pulumi.Input<String> accountName;
  /// The name of the compute policy to retrieve.
  final pulumi.Input<String> computePolicyName;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetComputePolicyArgs].
  /// [accountName] The name of the Data Lake Analytics account.
  /// [computePolicyName] The name of the compute policy to retrieve.
  /// [resourceGroupName] The name of the Azure resource group.
  const GetComputePolicyArgs({
    required this.accountName,
    required this.computePolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'computePolicyName': computePolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetComputePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetComputePolicyArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      computePolicyName: pulumi.Input.fromValue(map['computePolicyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
