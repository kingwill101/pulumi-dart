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
  const GetChannelArgs({
    required this.accountName,
    required this.channelName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'channelName': channelName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetChannelArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
