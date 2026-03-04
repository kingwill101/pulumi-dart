// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_iscsi_path_args_doc}
/// The set of arguments for IscsiPath.
/// {@endtemplate}
/// {@macro pulumi_avs_iscsi_path_args_doc}
class IscsiPathArgs {
  /// CIDR Block for iSCSI path.
  final pulumi.Input<String> networkBlock;

  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IscsiPathArgs].
  /// [networkBlock] CIDR Block for iSCSI path.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  IscsiPathArgs({
    required this.networkBlock,
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkBlock': networkBlock,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IscsiPathArgs.fromMap(Map<String, dynamic> map) {
    return IscsiPathArgs(
      networkBlock: pulumi.Input.fromValue(map['networkBlock'] as String),
      privateCloudName: pulumi.Input.fromValue(
        map['privateCloudName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
