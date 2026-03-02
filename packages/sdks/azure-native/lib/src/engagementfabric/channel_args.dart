// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_engagementfabric_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_engagementfabric_channel_args_doc}
class ChannelArgs {
  /// Account Name
  final pulumi.Input<String> accountName;
  /// The functions to be enabled for the channel
  final pulumi.Input<List<String>>? channelFunctions;
  /// Channel Name
  final pulumi.Input<String>? channelName;
  /// The channel type
  final pulumi.Input<String> channelType;
  /// The channel credentials
  final pulumi.Input<Map<String, String>>? credentials;
  /// Resource Group Name
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelArgs].
  /// [accountName] Account Name
  /// [channelFunctions] The functions to be enabled for the channel
  /// [channelName] Channel Name
  /// [channelType] The channel type
  /// [credentials] The channel credentials
  /// [resourceGroupName] Resource Group Name
  ChannelArgs({
    required this.accountName,
    this.channelFunctions,
    this.channelName,
    required this.channelType,
    this.credentials,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'channelFunctions': ?channelFunctions,
      'channelName': ?channelName,
      'channelType': channelType,
      'credentials': ?credentials,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      accountName: (map['accountName'] as String).input(),
      channelFunctions: map['channelFunctions'] == null ? null : ((map['channelFunctions']! as List).cast<String>()).input(),
      channelName: map['channelName'] == null ? null : (map['channelName']! as String).input(),
      channelType: (map['channelType'] as String).input(),
      credentials: map['credentials'] == null ? null : ((map['credentials']! as Map).cast<String, String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

