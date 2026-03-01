// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_botservice_list_channel_with_keys_args_doc}
/// Arguments for listChannelWithKeys.
/// {@endtemplate}
/// {@macro pulumi_botservice_list_channel_with_keys_args_doc}
class ListChannelWithKeysArgs {
  /// The name of the Channel resource.
  final pulumi.Input<String> channelName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Bot resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ListChannelWithKeysArgs].
  /// [channelName] The name of the Channel resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Bot resource.
  ListChannelWithKeysArgs({
    required pulumi.Output<String> channelName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
  }) :
      channelName = pulumi.Input.asInput<String>(channelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ListChannelWithKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListChannelWithKeysArgs(
      channelName: pulumi.Output.create<String>(map['channelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
    );
  }
}

