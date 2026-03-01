// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_get_private_cloud_get_private_cloud_args_doc}
/// Arguments for getPrivateCloud.
/// {@endtemplate}
/// {@macro pulumi_avs_get_private_cloud_get_private_cloud_args_doc}
class GetPrivateCloudArgs {
  /// The name of this Azure VMware Solution Private Cloud.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Azure VMware Solution Private Cloud exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateCloudArgs].
  /// [name] The name of this Azure VMware Solution Private Cloud.
  /// [resourceGroupName] The name of the Resource Group where the Azure VMware Solution Private Cloud exists.
  GetPrivateCloudArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateCloudArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

