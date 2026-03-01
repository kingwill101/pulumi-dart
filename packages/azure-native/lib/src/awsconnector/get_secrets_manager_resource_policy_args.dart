// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_secrets_manager_resource_policy_args_doc}
/// Arguments for getSecretsManagerResourcePolicy.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_secrets_manager_resource_policy_args_doc}
class GetSecretsManagerResourcePolicyArgs {
  /// Name of SecretsManagerResourcePolicy
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSecretsManagerResourcePolicyArgs].
  /// [name] Name of SecretsManagerResourcePolicy
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSecretsManagerResourcePolicyArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSecretsManagerResourcePolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretsManagerResourcePolicyArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

