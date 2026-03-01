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
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCredentialArgs].
  /// [automationAccountName] The name of the automation account.
  /// [credentialName] The name of credential.
  /// [resourceGroupName] Name of an Azure Resource group.
  GetCredentialArgs({
    required String automationAccountName,
    required String credentialName,
    required String resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asInput<String>(automationAccountName),
      credentialName = pulumi.Input.asInput<String>(credentialName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credentialName': credentialName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialArgs(
      automationAccountName: map['automationAccountName'] as String,
      credentialName: map['credentialName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

