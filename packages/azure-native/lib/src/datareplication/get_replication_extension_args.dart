// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datareplication_get_replication_extension_args_doc}
/// Arguments for getReplicationExtension.
/// {@endtemplate}
/// {@macro pulumi_datareplication_get_replication_extension_args_doc}
class GetReplicationExtensionArgs {
  /// The replication extension name.
  final pulumi.Input<String> replicationExtensionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [GetReplicationExtensionArgs].
  /// [replicationExtensionName] The replication extension name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  GetReplicationExtensionArgs({
    required String replicationExtensionName,
    required String resourceGroupName,
    required String vaultName,
  }) :
      replicationExtensionName = pulumi.Input.asInput<String>(replicationExtensionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      vaultName = pulumi.Input.asInput<String>(vaultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicationExtensionName': replicationExtensionName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory GetReplicationExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationExtensionArgs(
      replicationExtensionName: map['replicationExtensionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      vaultName: map['vaultName'] as String,
    );
  }
}

