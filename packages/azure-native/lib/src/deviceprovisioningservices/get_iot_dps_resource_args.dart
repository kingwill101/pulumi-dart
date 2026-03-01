// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceprovisioningservices_get_iot_dps_resource_args_doc}
/// Arguments for getIotDpsResource.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_get_iot_dps_resource_args_doc}
class GetIotDpsResourceArgs {
  /// Name of the provisioning service to retrieve.
  final pulumi.Input<String> provisioningServiceName;
  /// Resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetIotDpsResourceArgs].
  /// [provisioningServiceName] Name of the provisioning service to retrieve.
  /// [resourceGroupName] Resource group name.
  GetIotDpsResourceArgs({
    required String provisioningServiceName,
    required String resourceGroupName,
  }) :
      provisioningServiceName = pulumi.Input.asInput<String>(provisioningServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningServiceName': provisioningServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetIotDpsResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetIotDpsResourceArgs(
      provisioningServiceName: map['provisioningServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

