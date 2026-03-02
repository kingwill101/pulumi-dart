// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_model_properties.dart';

/// {@template pulumi_datareplication_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_datareplication_policy_args_doc}
class PolicyArgs {
  /// The policy name.
  final pulumi.Input<String>? policyName;
  /// Policy model properties.
  final pulumi.Input<PolicyModelProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [PolicyArgs].
  /// [policyName] The policy name.
  /// [properties] Policy model properties.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  PolicyArgs({
    this.policyName,
    required this.properties,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyName': ?policyName,
      'properties': pulumi.Input.mapInputValue<PolicyModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      policyName: map['policyName'] == null ? null : (map['policyName']! as String).input(),
      properties: (PolicyModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      vaultName: (map['vaultName'] as String).input(),
    );
  }
}

