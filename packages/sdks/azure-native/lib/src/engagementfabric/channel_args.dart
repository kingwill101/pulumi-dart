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
  const ChannelArgs({
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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      channelFunctions: (() { final guardedValue = map['channelFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      channelName: (() { final guardedValue = map['channelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      channelType: pulumi.Input.fromValue(map['channelType'] as String),
      credentials: (() { final guardedValue = map['credentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

