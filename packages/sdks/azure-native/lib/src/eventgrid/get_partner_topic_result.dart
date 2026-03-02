// ignore_for_file: unused_element, unnecessary_cast

import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPartnerTopic.
class GetPartnerTopicResult {
  /// Activation state of the partner topic.
  final String? activationState;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Event Type information from the corresponding event channel.
  final EventTypeInfoResponse? eventTypeInfo;
  /// Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// the partner topic and corresponding event channel are deleted.
  final String? expirationTimeIfNotActivatedUtc;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Identity information for the Partner Topic resource.
  final IdentityInfoResponse? identity;
  /// Location of the resource.
  final String location;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final String? messageForActivation;
  /// Name of the resource.
  final String name;
  /// The immutableId of the corresponding partner registration.
  final String? partnerRegistrationImmutableId;
  /// Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
  final String? partnerTopicFriendlyDescription;
  /// Provisioning state of the partner topic.
  final String provisioningState;
  /// Source associated with this partner topic. This represents a unique partner resource.
  final String? source;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetPartnerTopicResult].
  /// [activationState] Activation state of the partner topic.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eventTypeInfo] Event Type information from the corresponding event channel.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// [id] Fully qualified identifier of the resource.
  /// [identity] Identity information for the Partner Topic resource.
  /// [location] Location of the resource.
  /// [messageForActivation] Context or helpful message that can be used during the approval process by the subscriber.
  /// [name] Name of the resource.
  /// [partnerRegistrationImmutableId] The immutableId of the corresponding partner registration.
  /// [partnerTopicFriendlyDescription] Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// [provisioningState] Provisioning state of the partner topic.
  /// [source] Source associated with this partner topic. This represents a unique partner resource.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  GetPartnerTopicResult({
    this.activationState,
    required this.azureApiVersion,
    this.eventTypeInfo,
    this.expirationTimeIfNotActivatedUtc,
    required this.id,
    this.identity,
    required this.location,
    this.messageForActivation,
    required this.name,
    this.partnerRegistrationImmutableId,
    this.partnerTopicFriendlyDescription,
    required this.provisioningState,
    this.source,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'azureApiVersion': azureApiVersion,
      'eventTypeInfo': ?eventTypeInfo == null ? null : eventTypeInfo!.toMap(),
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'messageForActivation': ?messageForActivation,
      'name': name,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'partnerTopicFriendlyDescription': ?partnerTopicFriendlyDescription,
      'provisioningState': provisioningState,
      'source': ?source,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPartnerTopicResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicResult(
      activationState: map['activationState'] == null ? null : map['activationState']! as String,
      azureApiVersion: map['azureApiVersion'] as String,
      eventTypeInfo: map['eventTypeInfo'] == null ? null : EventTypeInfoResponse.fromMap((map['eventTypeInfo']! as Map).cast<String, dynamic>()),
      expirationTimeIfNotActivatedUtc: map['expirationTimeIfNotActivatedUtc'] == null ? null : map['expirationTimeIfNotActivatedUtc']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : IdentityInfoResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      messageForActivation: map['messageForActivation'] == null ? null : map['messageForActivation']! as String,
      name: map['name'] as String,
      partnerRegistrationImmutableId: map['partnerRegistrationImmutableId'] == null ? null : map['partnerRegistrationImmutableId']! as String,
      partnerTopicFriendlyDescription: map['partnerTopicFriendlyDescription'] == null ? null : map['partnerTopicFriendlyDescription']! as String,
      provisioningState: map['provisioningState'] as String,
      source: map['source'] == null ? null : map['source']! as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

