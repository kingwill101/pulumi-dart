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
    required String keyName,
    required String provisioningServiceName,
    required String resourceGroupName,
  }) :
      keyName = pulumi.Input.asInput<String>(keyName),
      provisioningServiceName = pulumi.Input.asInput<String>(provisioningServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'provisioningServiceName': provisioningServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListIotDpsResourceKeysForKeyNameArgs.fromMap(Map<String, dynamic> map) {
    return ListIotDpsResourceKeysForKeyNameArgs(
      keyName: map['keyName'] as String,
      provisioningServiceName: map['provisioningServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

