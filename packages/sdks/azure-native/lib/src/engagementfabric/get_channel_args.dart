// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_engagementfabric_get_channel_args_doc}
/// Arguments for getChannel.
/// {@endtemplate}
/// {@macro pulumi_engagementfabric_get_channel_args_doc}
class GetChannelArgs {
  /// Account Name
  final pulumi.Input<String> accountName;
  /// Channel Name
  final pulumi.Input<String> channelName;
  /// Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetChannelArgs].
  /// [accountName] Account Name
  /// [channelName] Channel Name
  /// [resourceGroupName] Resource Group Name
  GetChannelArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> channelName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      channelName = pulumi.Input.asInput<String>(channelName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'channelName': channelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      channelName: pulumi.Output.create<String>(map['channelName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

