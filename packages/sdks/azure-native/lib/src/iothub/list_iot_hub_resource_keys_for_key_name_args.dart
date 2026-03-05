// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iothub_list_iot_hub_resource_keys_for_key_name_args_doc}
/// Arguments for listIotHubResourceKeysForKeyName.
/// {@endtemplate}
/// {@macro pulumi_iothub_list_iot_hub_resource_keys_for_key_name_args_doc}
class ListIotHubResourceKeysForKeyNameArgs {
  /// The name of the shared access policy.
  final pulumi.Input<String> keyName;
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListIotHubResourceKeysForKeyNameArgs].
  /// [keyName] The name of the shared access policy.
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  ListIotHubResourceKeysForKeyNameArgs({
    required this.keyName,
    required this.resourceGroupName,
    required this.resourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListIotHubResourceKeysForKeyNameArgs.fromMap(Map<String, dynamic> map) {
    return ListIotHubResourceKeysForKeyNameArgs(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
    );
  }
}

