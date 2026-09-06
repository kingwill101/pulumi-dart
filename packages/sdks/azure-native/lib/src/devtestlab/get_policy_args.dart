// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_policy_args_doc}
class GetPolicyArgs {
  /// Specify the $expand query. Example: 'properties($select=description)'
  final pulumi.Input<String?>? expand;
  /// labs
  final pulumi.Input<String> labName;
  /// The name of the Policy
  final pulumi.Input<String> name;
  /// policysets
  final pulumi.Input<String> policySetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=description)'
  /// [labName] labs
  /// [name] The name of the Policy
  /// [policySetName] policysets
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetPolicyArgs({
    this.expand,
    required this.labName,
    required this.name,
    required this.policySetName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'labName': labName,
      'name': name,
      'policySetName': policySetName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyArgs(
      expand: (() { final guardedValue = map['expand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      policySetName: pulumi.Input.fromValue(map['policySetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
