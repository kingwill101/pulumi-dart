// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_topic_info.dart';

/// {@template pulumi_eventgrid_channel_args_doc}
/// The set of arguments for Channel.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_channel_args_doc}
class ChannelArgs {
  /// Name of the channel.
  final pulumi.Input<String>? channelName;
  /// The type of the event channel which represents the direction flow of events.
  final pulumi.Input<String>? channelType;
  /// Expiration time of the channel. If this timer expires while the corresponding partner topic is never activated,
  /// the channel and corresponding partner topic are deleted.
  final pulumi.Input<String>? expirationTimeIfNotActivatedUtc;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final pulumi.Input<String>? messageForActivation;
  /// Name of the partner namespace.
  final pulumi.Input<String> partnerNamespaceName;
  /// This property should be populated when channelType is PartnerTopic and represents information about the partner topic resource corresponding to the channel.
  final pulumi.Input<PartnerTopicInfo>? partnerTopicInfo;
  /// Provisioning state of the channel.
  final pulumi.Input<String>? provisioningState;
  /// The readiness state of the corresponding partner topic.
  final pulumi.Input<String>? readinessState;
  /// The name of the resource group within the partners subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ChannelArgs].
  /// [channelName] Name of the channel.
  /// [channelType] The type of the event channel which represents the direction flow of events.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the channel. If this timer expires while the corresponding partner topic is never activated,
  /// [messageForActivation] Context or helpful message that can be used during the approval process by the subscriber.
  /// [partnerNamespaceName] Name of the partner namespace.
  /// [partnerTopicInfo] This property should be populated when channelType is PartnerTopic and represents information about the partner topic resource corresponding to the channel.
  /// [provisioningState] Provisioning state of the channel.
  /// [readinessState] The readiness state of the corresponding partner topic.
  /// [resourceGroupName] The name of the resource group within the partners subscription.
  ChannelArgs({
    this.channelName,
    this.channelType,
    this.expirationTimeIfNotActivatedUtc,
    this.messageForActivation,
    required this.partnerNamespaceName,
    this.partnerTopicInfo,
    this.provisioningState,
    this.readinessState,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channelName': ?channelName,
      'channelType': ?channelType,
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'messageForActivation': ?messageForActivation,
      'partnerNamespaceName': partnerNamespaceName,
      'partnerTopicInfo': ?pulumi.Input.mapOptionalInputValue<PartnerTopicInfo, Map<String, dynamic>>(partnerTopicInfo, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
      'readinessState': ?readinessState,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ChannelArgs.fromMap(Map<String, dynamic> map) {
    return ChannelArgs(
      channelName: map['channelName'] == null ? null : (map['channelName'] as String).input(),
      channelType: map['channelType'] == null ? null : (map['channelType'] as String).input(),
      expirationTimeIfNotActivatedUtc: map['expirationTimeIfNotActivatedUtc'] == null ? null : (map['expirationTimeIfNotActivatedUtc'] as String).input(),
      messageForActivation: map['messageForActivation'] == null ? null : (map['messageForActivation'] as String).input(),
      partnerNamespaceName: (map['partnerNamespaceName'] as String).input(),
      partnerTopicInfo: map['partnerTopicInfo'] == null ? null : (PartnerTopicInfo.fromMap((map['partnerTopicInfo'] as Map).cast<String, dynamic>())).input(),
      provisioningState: map['provisioningState'] == null ? null : (map['provisioningState'] as String).input(),
      readinessState: map['readinessState'] == null ? null : (map['readinessState'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

