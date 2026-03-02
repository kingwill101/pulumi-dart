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
    required this.clusterName,
    required this.extensionName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'extensionName': extensionName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetExtensionArgs(
      clusterName: (map['clusterName'] as String).input(),
      extensionName: (map['extensionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

