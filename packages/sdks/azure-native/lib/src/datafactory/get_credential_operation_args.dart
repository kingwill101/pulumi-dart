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
    required pulumi.Output<String> credentialName,
    required pulumi.Output<String> factoryName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      credentialName = pulumi.Input.asInput<String>(credentialName),
      factoryName = pulumi.Input.asInput<String>(factoryName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': credentialName,
      'factoryName': factoryName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialOperationArgs(
      credentialName: pulumi.Output.create<String>(map['credentialName'] as String),
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

