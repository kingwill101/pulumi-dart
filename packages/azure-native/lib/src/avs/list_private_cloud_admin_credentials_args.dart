// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_list_private_cloud_admin_credentials_args_doc}
/// Arguments for listPrivateCloudAdminCredentials.
/// {@endtemplate}
/// {@macro pulumi_avs_list_private_cloud_admin_credentials_args_doc}
class ListPrivateCloudAdminCredentialsArgs {
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListPrivateCloudAdminCredentialsArgs].
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListPrivateCloudAdminCredentialsArgs({
    required String privateCloudName,
    required String resourceGroupName,
  }) :
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListPrivateCloudAdminCredentialsArgs.fromMap(Map<String, dynamic> map) {
    return ListPrivateCloudAdminCredentialsArgs(
      privateCloudName: map['privateCloudName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

