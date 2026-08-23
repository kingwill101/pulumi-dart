// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_get_credential_args_doc}
/// Arguments for getCredential.
/// {@endtemplate}
/// {@macro pulumi_automation_get_credential_args_doc}
class GetCredentialArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The name of credential.
  final pulumi.Input<String> credentialName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCredentialArgs].
  /// [automationAccountName] The name of the automation account.
  /// [credentialName] The name of credential.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetCredentialArgs({
    required this.automationAccountName,
    required this.credentialName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credentialName': credentialName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      credentialName: pulumi.Input.fromValue(map['credentialName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
