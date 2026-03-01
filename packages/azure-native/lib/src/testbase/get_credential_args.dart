// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_credential_args_doc}
/// Arguments for getCredential.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_credential_args_doc}
class GetCredentialArgs {
  /// The credential resource name.
  final pulumi.Input<String> credentialName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetCredentialArgs].
  /// [credentialName] The credential resource name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetCredentialArgs({
    required String credentialName,
    required String resourceGroupName,
    required String testBaseAccountName,
  }) :
      credentialName = pulumi.Input.asInput<String>(credentialName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialName': credentialName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialArgs(
      credentialName: map['credentialName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
    );
  }
}

