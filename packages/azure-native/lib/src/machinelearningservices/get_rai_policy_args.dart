// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_rai_policy_args_doc}
/// Arguments for getRaiPolicy.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_rai_policy_args_doc}
class GetRaiPolicyArgs {
  /// Name of the endpoint resource.
  final pulumi.Input<String> endpointName;
  /// Name of the Rai Policy.
  final pulumi.Input<String> raiPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Azure Machine Learning Workspace Name
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetRaiPolicyArgs].
  /// [endpointName] Name of the endpoint resource.
  /// [raiPolicyName] Name of the Rai Policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Azure Machine Learning Workspace Name
  GetRaiPolicyArgs({
    required String endpointName,
    required String raiPolicyName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      endpointName = pulumi.Input.asInput<String>(endpointName),
      raiPolicyName = pulumi.Input.asInput<String>(raiPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': endpointName,
      'raiPolicyName': raiPolicyName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetRaiPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetRaiPolicyArgs(
      endpointName: map['endpointName'] as String,
      raiPolicyName: map['raiPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

