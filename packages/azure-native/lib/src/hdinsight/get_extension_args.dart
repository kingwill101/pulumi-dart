// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_hdinsight_get_extension_args_doc}
/// Arguments for getExtension.
/// {@endtemplate}
/// {@macro pulumi_hdinsight_get_extension_args_doc}
class GetExtensionArgs {
  /// The name of the cluster.
  final pulumi.Input<String> clusterName;
  /// The name of the cluster extension.
  final pulumi.Input<String> extensionName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExtensionArgs].
  /// [clusterName] The name of the cluster.
  /// [extensionName] The name of the cluster extension.
  /// [resourceGroupName] The name of the resource group.
  GetExtensionArgs({
    required String clusterName,
    required String extensionName,
    required String resourceGroupName,
  }) :
      clusterName = pulumi.Input.asInput<String>(clusterName),
      extensionName = pulumi.Input.asInput<String>(extensionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'extensionName': extensionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionArgs(
      clusterName: map['clusterName'] as String,
      extensionName: map['extensionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

