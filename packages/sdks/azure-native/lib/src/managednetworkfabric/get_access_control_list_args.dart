// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managednetworkfabric_get_access_control_list_args_doc}
/// Arguments for getAccessControlList.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_get_access_control_list_args_doc}
class GetAccessControlListArgs {
  /// Name of the Access Control List.
  final pulumi.Input<String> accessControlListName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessControlListArgs].
  /// [accessControlListName] Name of the Access Control List.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetAccessControlListArgs({
    required this.accessControlListName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessControlListName': accessControlListName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessControlListArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessControlListArgs(
      accessControlListName: pulumi.Input.fromValue(map['accessControlListName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

