// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_channel_full_url_args_doc}
/// Arguments for getChannelFullUrl.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_channel_full_url_args_doc}
class GetChannelFullUrlArgs {
  /// Name of the Channel.
  final pulumi.Input<String> channelName;

  /// Name of the partner namespace.
  final pulumi.Input<String> partnerNamespaceName;

  /// The name of the resource group within the partners subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetChannelFullUrlArgs].
  /// [channelName] Name of the Channel.
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [resourceGroupName] The name of the resource group within the partners subscription.
  GetChannelFullUrlArgs({
    required this.channelName,
    required this.partnerNamespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': channelName,
      'partnerNamespaceName': partnerNamespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetChannelFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelFullUrlArgs(
      channelName: pulumi.Input.fromValue(map['channelName'] as String),
      partnerNamespaceName: pulumi.Input.fromValue(
        map['partnerNamespaceName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
