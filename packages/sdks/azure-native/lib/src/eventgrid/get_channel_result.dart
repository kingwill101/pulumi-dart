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
  const GetChannelResult({
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
      'partnerTopicInfo': ?partnerTopicInfo?.toMap(),
      'provisioningState': ?provisioningState,
      'readinessState': ?readinessState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetChannelResult.fromMap(Map<String, dynamic> map) {
    return GetChannelResult(
      azureApiVersion: map['azureApiVersion'] as String,
      channelType: (() { final guardedValue = map['channelType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTimeIfNotActivatedUtc: (() { final guardedValue = map['expirationTimeIfNotActivatedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      messageForActivation: (() { final guardedValue = map['messageForActivation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      partnerTopicInfo: (() { final guardedValue = map['partnerTopicInfo']; if (guardedValue == null) return null; return PartnerTopicInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readinessState: (() { final guardedValue = map['readinessState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

