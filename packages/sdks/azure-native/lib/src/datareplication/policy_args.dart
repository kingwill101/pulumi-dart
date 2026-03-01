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
    pulumi.Output<String>? policyName,
    required pulumi.Output<PolicyModelProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> vaultName,
  }) :
      policyName = pulumi.Input.asOptionalInput<String>(policyName),
      properties = pulumi.Input.asInput<PolicyModelProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

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
      policyName: map['policyName'] == null ? null : pulumi.Output.create<String>(map['policyName'] as String),
      properties: pulumi.Output.create<PolicyModelProperties>(PolicyModelProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      vaultName: pulumi.Output.create<String>(map['vaultName'] as String),
    );
  }
}

