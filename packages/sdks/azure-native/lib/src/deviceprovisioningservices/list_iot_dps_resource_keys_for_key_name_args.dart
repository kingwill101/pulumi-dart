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
    required pulumi.Output<String> keyName,
    required pulumi.Output<String> provisioningServiceName,
    required pulumi.Output<String> resourceGroupName,
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
      keyName: pulumi.Output.create<String>(map['keyName'] as String),
      provisioningServiceName: pulumi.Output.create<String>(map['provisioningServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

