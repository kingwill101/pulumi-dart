// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitiveservices_get_encryption_scope_args_doc}
/// Arguments for getEncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_get_encryption_scope_args_doc}
class GetEncryptionScopeArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String> accountName;
  /// The name of the encryptionScope associated with the Cognitive Services Account
  final pulumi.Input<String> encryptionScopeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEncryptionScopeArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [encryptionScopeName] The name of the encryptionScope associated with the Cognitive Services Account
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEncryptionScopeArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> encryptionScopeName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      encryptionScopeName = pulumi.Input.asInput<String>(encryptionScopeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'encryptionScopeName': encryptionScopeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      encryptionScopeName: pulumi.Output.create<String>(map['encryptionScopeName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

