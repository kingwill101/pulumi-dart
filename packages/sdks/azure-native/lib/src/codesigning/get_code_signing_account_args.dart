// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codesigning_get_code_signing_account_args_doc}
/// Arguments for getCodeSigningAccount.
/// {@endtemplate}
/// {@macro pulumi_codesigning_get_code_signing_account_args_doc}
class GetCodeSigningAccountArgs {
  /// Trusted Signing account name.
  final pulumi.Input<String> accountName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCodeSigningAccountArgs].
  /// [accountName] Trusted Signing account name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCodeSigningAccountArgs({
    required this.accountName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCodeSigningAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningAccountArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

