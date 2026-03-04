// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_credential_operation_args_doc}
/// Arguments for getCredentialOperation.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_credential_operation_args_doc}
class GetCredentialOperationArgs {
  /// Credential name
  final pulumi.Input<String> credentialName;

  /// The factory name.
  final pulumi.Input<String> factoryName;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCredentialOperationArgs].
  /// [credentialName] Credential name
  /// [factoryName] The factory name.
  /// [resourceGroupName] The resource group name.
  GetCredentialOperationArgs({
    required this.credentialName,
    required this.factoryName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': credentialName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialOperationArgs(
      credentialName: pulumi.Input.fromValue(map['credentialName'] as String),
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
