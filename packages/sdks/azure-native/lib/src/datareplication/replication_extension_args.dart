// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_extension_model_properties.dart';

/// {@template pulumi_datareplication_replication_extension_args_doc}
/// The set of arguments for ReplicationExtension.
/// {@endtemplate}
/// {@macro pulumi_datareplication_replication_extension_args_doc}
class ReplicationExtensionArgs {
  /// Replication extension model properties.
  final pulumi.Input<ReplicationExtensionModelProperties> properties;
  /// The replication extension name.
  final pulumi.Input<String?>? replicationExtensionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The vault name.
  final pulumi.Input<String> vaultName;

  /// Creates a new [ReplicationExtensionArgs].
  /// [properties] Replication extension model properties.
  /// [replicationExtensionName] The replication extension name.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [vaultName] The vault name.
  const ReplicationExtensionArgs({
    required this.properties,
    this.replicationExtensionName,
    required this.resourceGroupName,
    required this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': pulumi.Input.mapInputValue<ReplicationExtensionModelProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'replicationExtensionName': ?replicationExtensionName,
      'resourceGroupName': resourceGroupName,
      'vaultName': vaultName,
    };
  }

  factory ReplicationExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationExtensionArgs(
      properties: pulumi.Input.fromValue(ReplicationExtensionModelProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())),
      replicationExtensionName: (() { final guardedValue = map['replicationExtensionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      vaultName: pulumi.Input.fromValue(map['vaultName'] as String),
    );
  }
}
