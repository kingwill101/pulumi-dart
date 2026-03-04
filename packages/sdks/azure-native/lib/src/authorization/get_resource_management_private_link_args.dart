// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_resource_management_private_link_args_doc}
/// Arguments for getResourceManagementPrivateLink.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_resource_management_private_link_args_doc}
class GetResourceManagementPrivateLinkArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the resource management private link.
  final pulumi.Input<String> rmplName;

  /// Creates a new [GetResourceManagementPrivateLinkArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [rmplName] The name of the resource management private link.
  GetResourceManagementPrivateLinkArgs({
    required this.resourceGroupName,
    required this.rmplName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'rmplName': rmplName,
    };
  }

  factory GetResourceManagementPrivateLinkArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResourceManagementPrivateLinkArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      rmplName: pulumi.Input.fromValue(map['rmplName'] as String),
    );
  }
}
