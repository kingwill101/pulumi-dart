// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_delegation_setting_secrets_args_doc}
/// Arguments for listDelegationSettingSecrets.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_delegation_setting_secrets_args_doc}
class ListDelegationSettingSecretsArgs {
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListDelegationSettingSecretsArgs].
  /// [resourceGroupName] The name of the resource group.
  /// [serviceName] The name of the API Management service.
  ListDelegationSettingSecretsArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListDelegationSettingSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListDelegationSettingSecretsArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

