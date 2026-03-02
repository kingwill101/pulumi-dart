// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_credential_args_doc}
/// The set of arguments for Credential.
/// {@endtemplate}
/// {@macro pulumi_automation_credential_args_doc}
class CredentialArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// The parameters supplied to the create or update credential operation.
  final pulumi.Input<String>? credentialName;
  /// Gets or sets the description of the credential.
  final pulumi.Input<String>? description;
  /// Gets or sets the name of the credential.
  final pulumi.Input<String> name;
  /// Gets or sets the password of the credential.
  final pulumi.Input<String> password;
  /// Name of an Azure Resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Gets or sets the user name of the credential.
  final pulumi.Input<String> userName;

  /// Creates a new [CredentialArgs].
  /// [automationAccountName] The name of the automation account.
  /// [credentialName] The parameters supplied to the create or update credential operation.
  /// [description] Gets or sets the description of the credential.
  /// [name] Gets or sets the name of the credential.
  /// [password] Gets or sets the password of the credential.
  /// [resourceGroupName] Name of an Azure Resource group.
  /// [userName] Gets or sets the user name of the credential.
  CredentialArgs({
    required this.automationAccountName,
    this.credentialName,
    this.description,
    required this.name,
    required this.password,
    required this.resourceGroupName,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credentialName': ?credentialName,
      'description': ?description,
      'name': name,
      'password': password,
      'resourceGroupName': resourceGroupName,
      'userName': userName,
    };
  }

  factory CredentialArgs.fromMap(Map<String, dynamic> map) {
    return CredentialArgs(
      automationAccountName: (map['automationAccountName'] as String).input(),
      credentialName: map['credentialName'] == null ? null : (map['credentialName'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      password: (map['password'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      userName: (map['userName'] as String).input(),
    );
  }
}

