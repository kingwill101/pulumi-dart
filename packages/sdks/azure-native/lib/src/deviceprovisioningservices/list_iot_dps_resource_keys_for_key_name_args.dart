// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_for_key_name_args_doc}
/// Arguments for listIotDpsResourceKeysForKeyName.
/// {@endtemplate}
/// {@macro pulumi_deviceprovisioningservices_list_iot_dps_resource_keys_for_key_name_args_doc}
class ListIotDpsResourceKeysForKeyNameArgs {
  /// Logical key name to get key-values for.
  final pulumi.Input<String> keyName;

  /// Name of the provisioning service.
  final pulumi.Input<String> provisioningServiceName;

  /// The name of the resource group that contains the provisioning service.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListIotDpsResourceKeysForKeyNameArgs].
  /// [keyName] Logical key name to get key-values for.
  /// [provisioningServiceName] Name of the provisioning service.
  /// [resourceGroupName] The name of the resource group that contains the provisioning service.
  ListIotDpsResourceKeysForKeyNameArgs({
    required this.keyName,
    required this.provisioningServiceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'provisioningServiceName': provisioningServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIotDpsResourceKeysForKeyNameArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListIotDpsResourceKeysForKeyNameArgs(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      provisioningServiceName: pulumi.Input.fromValue(
        map['provisioningServiceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
