// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_efs_file_system_args_doc}
/// Arguments for getEfsFileSystem.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_efs_file_system_args_doc}
class GetEfsFileSystemArgs {
  /// Name of EfsFileSystem
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEfsFileSystemArgs].
  /// [name] Name of EfsFileSystem
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetEfsFileSystemArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEfsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return GetEfsFileSystemArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
