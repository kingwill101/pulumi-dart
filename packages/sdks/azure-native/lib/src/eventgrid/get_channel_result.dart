// ignore_for_file: unused_element, unnecessary_cast

import 'partner_topic_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getChannel.
class GetChannelResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The type of the event channel which represents the direction flow of events.
  final String? channelType;
  /// Expiration time of the channel. If this timer expires while the corresponding partner topic is never activated,
  /// the channel and corresponding partner topic are deleted.
  final String? expirationTimeIfNotActivatedUtc;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final String? messageForActivation;
  /// Name of the resource.
  final String name;
  /// This property should be populated when channelType is PartnerTopic and represents information about the partner topic resource corresponding to the channel.
  final PartnerTopicInfoResponse? partnerTopicInfo;
  /// Provisioning state of the channel.
  final String? provisioningState;
  /// The readiness state of the corresponding partner topic.
  final String? readinessState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetChannelResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [channelType] The type of the event channel which represents the direction flow of events.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the channel. If this timer expires while the corresponding partner topic is never activated,
  /// [id] Fully qualified identifier of the resource.
  /// [messageForActivation] Context or helpful message that can be used during the approval process by the subscriber.
  /// [name] Name of the resource.
  /// [partnerTopicInfo] This property should be populated when channelType is PartnerTopic and represents information about the partner topic resource corresponding to the channel.
  /// [provisioningState] Provisioning state of the channel.
  /// [readinessState] The readiness state of the corresponding partner topic.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  GetChannelResult({
    required this.azureApiVersion,
    this.channelType,
    this.expirationTimeIfNotActivatedUtc,
    required this.id,
    this.messageForActivation,
    required this.name,
    this.partnerTopicInfo,
    this.provisioningState,
    this.readinessState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'channelType': ?channelType,
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'id': id,
      'messageForActivation': ?messageForActivation,
      'name': name,
      'partnerTopicInfo': ?partnerTopicInfo == null ? null : partnerTopicInfo!.toMap(),
      'provisioningState': ?provisioningState,
      'readinessState': ?readinessState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      channelType: map['channelType'] == null ? null : map['channelType']! as String,
      expirationTimeIfNotActivatedUtc: map['expirationTimeIfNotActivatedUtc'] == null ? null : map['expirationTimeIfNotActivatedUtc']! as String,
      id: map['id'] as String,
      messageForActivation: map['messageForActivation'] == null ? null : map['messageForActivation']! as String,
      name: map['name'] as String,
      partnerTopicInfo: map['partnerTopicInfo'] == null ? null : PartnerTopicInfoResponse.fromMap((map['partnerTopicInfo']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      readinessState: map['readinessState'] == null ? null : map['readinessState']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

