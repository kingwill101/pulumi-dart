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
  const ListDelegationSettingSecretsArgs({
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListDelegationSettingSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListDelegationSettingSecretsArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}

