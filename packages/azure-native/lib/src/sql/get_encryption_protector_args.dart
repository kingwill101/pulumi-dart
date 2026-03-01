// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sql_get_encryption_protector_args_doc}
/// Arguments for getEncryptionProtector.
/// {@endtemplate}
/// {@macro pulumi_sql_get_encryption_protector_args_doc}
class GetEncryptionProtectorArgs {
  /// The name of the encryption protector to be retrieved.
  final pulumi.Input<String> encryptionProtectorName;
  /// The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;

  /// Creates a new [GetEncryptionProtectorArgs].
  /// [encryptionProtectorName] The name of the encryption protector to be retrieved.
  /// [resourceGroupName] The name of the resource group that contains the resource. You can obtain this value from the Azure Resource Manager API or the portal.
  /// [serverName] The name of the server.
  GetEncryptionProtectorArgs({
    required String encryptionProtectorName,
    required String resourceGroupName,
    required String serverName,
  }) :
      encryptionProtectorName = pulumi.Input.asInput<String>(encryptionProtectorName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionProtectorName': encryptionProtectorName,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
    };
  }

  factory GetEncryptionProtectorArgs.fromMap(Map<String, dynamic> map) {
    return GetEncryptionProtectorArgs(
      encryptionProtectorName: map['encryptionProtectorName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serverName: map['serverName'] as String,
    );
  }
}

