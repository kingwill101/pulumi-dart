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
    required String channelName,
    required String partnerNamespaceName,
    required String resourceGroupName,
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

  factory GetChannelFullUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetChannelFullUrlArgs(
      channelName: map['channelName'] as String,
      partnerNamespaceName: map['partnerNamespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

