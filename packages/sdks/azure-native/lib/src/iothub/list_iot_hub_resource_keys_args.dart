// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iothub_list_iot_hub_resource_keys_args_doc}
/// Arguments for listIotHubResourceKeys.
/// {@endtemplate}
/// {@macro pulumi_iothub_list_iot_hub_resource_keys_args_doc}
class ListIotHubResourceKeysArgs {
  /// The name of the resource group that contains the IoT hub.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the IoT hub.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListIotHubResourceKeysArgs].
  /// [resourceGroupName] The name of the resource group that contains the IoT hub.
  /// [resourceName] The name of the IoT hub.
  ListIotHubResourceKeysArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListIotHubResourceKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListIotHubResourceKeysArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

