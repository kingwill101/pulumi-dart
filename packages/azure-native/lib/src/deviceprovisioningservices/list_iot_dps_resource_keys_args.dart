// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_args_doc}
/// Arguments for listIotDpsResourceKeys.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_args_doc}
class ListIotDpsResourceKeysArgs {
  /// The provisioning service name to get the shared access keys for.
  final pulumi.Input<String> provisioningServiceName;
  /// resource group name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIotDpsResourceKeysArgs].
  /// [provisioningServiceName] The provisioning service name to get the shared access keys for.
  /// [resourceGroupName] resource group name
  ListIotDpsResourceKeysArgs({
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

  factory ListIotDpsResourceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListIotDpsResourceKeysArgs(
      provisioningServiceName: map['provisioningServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

