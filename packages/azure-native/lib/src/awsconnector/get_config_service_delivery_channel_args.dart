// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_awsconnector_get_config_service_delivery_channel_args_doc}
/// Arguments for getConfigServiceDeliveryChannel.
/// {@endtemplate}
/// {@macro pulumi_awsconnector_get_config_service_delivery_channel_args_doc}
class GetConfigServiceDeliveryChannelArgs {
  /// Name of ConfigServiceDeliveryChannel
  final pulumi.Input<String> name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConfigServiceDeliveryChannelArgs].
  /// [name] Name of ConfigServiceDeliveryChannel
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetConfigServiceDeliveryChannelArgs({
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

  factory GetConfigServiceDeliveryChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigServiceDeliveryChannelArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

