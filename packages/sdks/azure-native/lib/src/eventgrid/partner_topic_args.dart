// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info.dart';
import 'identity_info.dart';

/// {@template pulumi_eventgrid_partner_topic_args_doc}
/// The set of arguments for PartnerTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_partner_topic_args_doc}
class PartnerTopicArgs {
  /// Activation state of the partner topic.
  final pulumi.Input<dynamic>? activationState;
  /// Event Type information from the corresponding event channel.
  final pulumi.Input<EventTypeInfo?>? eventTypeInfo;
  /// Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// the partner topic and corresponding event channel are deleted.
  final pulumi.Input<String?>? expirationTimeIfNotActivatedUtc;
  /// Identity information for the Partner Topic resource.
  final pulumi.Input<IdentityInfo?>? identity;
  /// Location of the resource.
  final pulumi.Input<String?>? location;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final pulumi.Input<String?>? messageForActivation;
  /// The immutableId of the corresponding partner registration.
  final pulumi.Input<String?>? partnerRegistrationImmutableId;
  /// Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
  final pulumi.Input<String?>? partnerTopicFriendlyDescription;
  /// Name of the partner topic.
  final pulumi.Input<String?>? partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Source associated with this partner topic. This represents a unique partner resource.
  final pulumi.Input<String?>? source;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [PartnerTopicArgs].
  /// [activationState] Activation state of the partner topic.
  /// [eventTypeInfo] Event Type information from the corresponding event channel.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// [identity] Identity information for the Partner Topic resource.
  /// [location] Location of the resource.
  /// [messageForActivation] Context or helpful message that can be used during the approval process by the subscriber.
  /// [partnerRegistrationImmutableId] The immutableId of the corresponding partner registration.
  /// [partnerTopicFriendlyDescription] Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// [partnerTopicName] Name of the partner topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [source] Source associated with this partner topic. This represents a unique partner resource.
  /// [tags] Tags of the resource.
  const PartnerTopicArgs({
    this.activationState,
    this.eventTypeInfo,
    this.expirationTimeIfNotActivatedUtc,
    this.identity,
    this.location,
    this.messageForActivation,
    this.partnerRegistrationImmutableId,
    this.partnerTopicFriendlyDescription,
    this.partnerTopicName,
    required this.resourceGroupName,
    this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'eventTypeInfo': ?pulumi.Input.mapOptionalInputValue<EventTypeInfo, Map<String, dynamic>>(eventTypeInfo, (value) => value.toMap()),
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'identity': ?pulumi.Input.mapOptionalInputValue<IdentityInfo, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'messageForActivation': ?messageForActivation,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'partnerTopicFriendlyDescription': ?partnerTopicFriendlyDescription,
      'partnerTopicName': ?partnerTopicName,
      'resourceGroupName': resourceGroupName,
      'source': ?source,
      'tags': ?tags,
    };
  }

  factory PartnerTopicArgs.fromMap(Map<String, dynamic> map) {
    return PartnerTopicArgs(
      activationState: (() { final guardedValue = map['activationState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      eventTypeInfo: (() { final guardedValue = map['eventTypeInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventTypeInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expirationTimeIfNotActivatedUtc: (() { final guardedValue = map['expirationTimeIfNotActivatedUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IdentityInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageForActivation: (() { final guardedValue = map['messageForActivation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerRegistrationImmutableId: (() { final guardedValue = map['partnerRegistrationImmutableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerTopicFriendlyDescription: (() { final guardedValue = map['partnerTopicFriendlyDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerTopicName: (() { final guardedValue = map['partnerTopicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
