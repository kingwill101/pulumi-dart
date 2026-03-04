// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceregistry_get_credential_args_doc}
/// Arguments for getCredential.
/// {@endtemplate}
/// {@macro pulumi_deviceregistry_get_credential_args_doc}
class GetCredentialArgs {
  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCredentialArgs].
  /// [namespaceName] The name of the namespace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCredentialArgs({
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCredentialArgs.fromMap(Map<String, dynamic> map) {
    return GetCredentialArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
