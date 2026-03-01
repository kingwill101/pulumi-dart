// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_deployment_args_doc}
/// Arguments for getDeployment.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_deployment_args_doc}
class GetDeploymentArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the deployment associated with the Cognitive Services Account
  final pulumi.Input<String> deploymentName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDeploymentArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [deploymentName] The name of the deployment associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetDeploymentArgs({
    required String accountName,
    required String deploymentName,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      deploymentName = pulumi.Input.asInput<String>(deploymentName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'deploymentName': deploymentName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetDeploymentArgs(
      accountName: map['accountName'] as String,
      deploymentName: map['deploymentName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

