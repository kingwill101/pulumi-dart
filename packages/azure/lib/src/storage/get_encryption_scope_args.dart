// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_encryption_scope_get_encryption_scope_args_doc}
/// Arguments for getEncryptionScope.
/// {@endtemplate}
/// {@macro pulumi_storage_get_encryption_scope_get_encryption_scope_args_doc}
class GetEncryptionScopeArgs {
  /// The name of this Storage Encryption Scope.
  final pulumi.Input<String> name;
  /// The ID of the Storage Account where this Storage Encryption Scope exists.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetEncryptionScopeArgs].
  /// [name] The name of this Storage Encryption Scope.
  /// [storageAccountId] The ID of the Storage Account where this Storage Encryption Scope exists.
  GetEncryptionScopeArgs({
    required String name,
    required String storageAccountId,
  }) :
      name = pulumi.Input.asInput<String>(name),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetEncryptionScopeArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionScopeArgs(
      name: map['name'] as String,
      storageAccountId: map['storageAccountId'] as String,
    );
  }
}

