// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtestlab_get_policy_args_doc}
/// Arguments for getPolicy.
/// {@endtemplate}
/// {@macro pulumi_devtestlab_get_policy_args_doc}
class GetPolicyArgs {
  /// Specify the $expand query. Example: 'properties($select=description)'
  final pulumi.Input<String>? expand;
  /// labs
  final pulumi.Input<String> labName;
  /// The name of the Schedule
  final pulumi.Input<String> name;
  /// policysets
  final pulumi.Input<String> policySetName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPolicyArgs].
  /// [expand] Specify the $expand query. Example: 'properties($select=description)'
  /// [labName] labs
  /// [name] The name of the Schedule
  /// [policySetName] policysets
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetPolicyArgs({
    String? expand,
    required String labName,
    required String name,
    required String policySetName,
    required String resourceGroupName,
  }) :
      expand = pulumi.Input.asOptionalInput<String>(expand),
      labName = pulumi.Input.asInput<String>(labName),
      name = pulumi.Input.asInput<String>(name),
      policySetName = pulumi.Input.asInput<String>(policySetName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      expand: map['expand'] == null ? null : map['expand'] as String,
      labName: map['labName'] as String,
      name: map['name'] as String,
      policySetName: map['policySetName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

