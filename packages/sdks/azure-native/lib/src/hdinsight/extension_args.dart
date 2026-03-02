// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_extension_args_doc}
/// The set of arguments for Extension.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_extension_args_doc}
class ExtensionArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the cluster extension.
  final pulumi.Input<String>? extensionName;
  /// The certificate for the cluster monitoring extensions.
  final pulumi.Input<String>? primaryKey;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The workspace ID for the cluster monitoring extension.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ExtensionArgs].
  /// [clusterName] The name of the cluster.
  /// [extensionName] The name of the cluster extension.
  /// [primaryKey] The certificate for the cluster monitoring extensions.
  /// [resourceGroupName] The name of the resource group.
  /// [workspaceId] The workspace ID for the cluster monitoring extension.
  ExtensionArgs({
    required this.clusterName,
    this.extensionName,
    this.primaryKey,
    required this.resourceGroupName,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'extensionName': ?extensionName,
      'primaryKey': ?primaryKey,
      'resourceGroupName': resourceGroupName,
      'workspaceId': ?workspaceId,
    };
  }

  factory ExtensionArgs.fromMap(Map<String, dynamic> map) {
    return ExtensionArgs(
      clusterName: (map['clusterName'] as String).input(),
      extensionName: map['extensionName'] == null ? null : (map['extensionName']! as String).input(),
      primaryKey: map['primaryKey'] == null ? null : (map['primaryKey']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

