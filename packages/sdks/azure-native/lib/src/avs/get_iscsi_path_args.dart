// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_iscsi_path_args_doc}
/// Arguments for getIscsiPath.
/// {@endtemplate}
/// {@macro pulumi_avs_get_iscsi_path_args_doc}
class GetIscsiPathArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIscsiPathArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetIscsiPathArgs({
    required this.privateCloudName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIscsiPathArgs.fromMap(Map<String, dynamic> map) {
    return GetIscsiPathArgs(
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
