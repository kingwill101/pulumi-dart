// ignore_for_file: unused_element, unnecessary_cast

import 'event_type_info_response.dart';
import 'identity_info_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPartnerTopic.
class GetPartnerTopicResult {
  /// Activation state of the partner topic.
  final String? activationState;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Event Type information from the corresponding event channel.
  final EventTypeInfoResponse? eventTypeInfo;
  /// Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// the partner topic and corresponding event channel are deleted.
  final String? expirationTimeIfNotActivatedUtc;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Identity information for the Partner Topic resource.
  final IdentityInfoResponse? identity;
  /// Location of the resource.
  final String? location;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final String? messageForActivation;
  /// Name of the resource.
  final String? name;
  /// The immutableId of the corresponding partner registration.
  final String? partnerRegistrationImmutableId;
  /// Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
  final String? partnerTopicFriendlyDescription;
  /// Provisioning state of the partner topic.
  final String? provisioningState;
  /// Source associated with this partner topic. This represents a unique partner resource.
  final String? source;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String? type;

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
  const GetPartnerTopicResult({
    this.activationState,
    this.azureApiVersion,
    this.eventTypeInfo,
    this.expirationTimeIfNotActivatedUtc,
    this.id,
    this.identity,
    this.location,
    this.messageForActivation,
    this.name,
    this.partnerRegistrationImmutableId,
    this.partnerTopicFriendlyDescription,
    this.provisioningState,
    this.source,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'azureApiVersion': ?azureApiVersion,
      'eventTypeInfo': ?eventTypeInfo?.toMap(),
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'messageForActivation': ?messageForActivation,
      'name': ?name,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'partnerTopicFriendlyDescription': ?partnerTopicFriendlyDescription,
      'provisioningState': ?provisioningState,
      'source': ?source,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPartnerTopicResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicResult(
      activationState: (() { final guardedValue = map['activationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eventTypeInfo: (() { final guardedValue = map['eventTypeInfo']; if (guardedValue == null) return null; return EventTypeInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      expirationTimeIfNotActivatedUtc: (() { final guardedValue = map['expirationTimeIfNotActivatedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return IdentityInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageForActivation: (() { final guardedValue = map['messageForActivation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRegistrationImmutableId: (() { final guardedValue = map['partnerRegistrationImmutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerTopicFriendlyDescription: (() { final guardedValue = map['partnerTopicFriendlyDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
