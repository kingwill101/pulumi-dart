// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_channel_args_doc}
/// Arguments for getChannel.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_channel_args_doc}
class GetChannelArgs {
  /// Name of the channel.
  final pulumi.Input<String> channelName;
  /// Name of the partner namespace.
  final pulumi.Input<String> partnerNamespaceName;
  /// The name of the resource group within the partners subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetChannelArgs].
  /// [channelName] Name of the channel.
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [resourceGroupName] The name of the resource group within the partners subscription.
  GetChannelArgs({
    required pulumi.Output<String> channelName,
    required pulumi.Output<String> partnerNamespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      channelName = pulumi.Input.asInput<String>(channelName),
      partnerNamespaceName = pulumi.Input.asInput<String>(partnerNamespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      channelName: pulumi.Output.create<String>(map['channelName'] as String),
      partnerNamespaceName: pulumi.Output.create<String>(map['partnerNamespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

