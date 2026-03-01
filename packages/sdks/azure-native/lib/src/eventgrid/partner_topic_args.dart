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
  final pulumi.Input<String>? activationState;
  /// Event Type information from the corresponding event channel.
  final pulumi.Input<EventTypeInfo>? eventTypeInfo;
  /// Expiration time of the partner topic. If this timer expires while the partner topic is still never activated,
  /// the partner topic and corresponding event channel are deleted.
  final pulumi.Input<String>? expirationTimeIfNotActivatedUtc;
  /// Identity information for the Partner Topic resource.
  final pulumi.Input<IdentityInfo>? identity;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Context or helpful message that can be used during the approval process by the subscriber.
  final pulumi.Input<String>? messageForActivation;
  /// The immutableId of the corresponding partner registration.
  final pulumi.Input<String>? partnerRegistrationImmutableId;
  /// Friendly description about the topic. This can be set by the publisher/partner to show custom description for the customer partner topic.
  /// This will be helpful to remove any ambiguity of the origin of creation of the partner topic for the customer.
  final pulumi.Input<String>? partnerTopicFriendlyDescription;
  /// Name of the partner topic.
  final pulumi.Input<String>? partnerTopicName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Source associated with this partner topic. This represents a unique partner resource.
  final pulumi.Input<String>? source;
  /// Tags of the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
  PartnerTopicArgs({
    pulumi.Output<String>? activationState,
    pulumi.Output<EventTypeInfo>? eventTypeInfo,
    pulumi.Output<String>? expirationTimeIfNotActivatedUtc,
    pulumi.Output<IdentityInfo>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? messageForActivation,
    pulumi.Output<String>? partnerRegistrationImmutableId,
    pulumi.Output<String>? partnerTopicFriendlyDescription,
    pulumi.Output<String>? partnerTopicName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? source,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      activationState = pulumi.Input.asOptionalInput<String>(activationState),
      eventTypeInfo = pulumi.Input.asOptionalInput<EventTypeInfo>(eventTypeInfo),
      expirationTimeIfNotActivatedUtc = pulumi.Input.asOptionalInput<String>(expirationTimeIfNotActivatedUtc),
      identity = pulumi.Input.asOptionalInput<IdentityInfo>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      messageForActivation = pulumi.Input.asOptionalInput<String>(messageForActivation),
      partnerRegistrationImmutableId = pulumi.Input.asOptionalInput<String>(partnerRegistrationImmutableId),
      partnerTopicFriendlyDescription = pulumi.Input.asOptionalInput<String>(partnerTopicFriendlyDescription),
      partnerTopicName = pulumi.Input.asOptionalInput<String>(partnerTopicName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asOptionalInput<String>(source),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      activationState: map['activationState'] == null ? null : pulumi.Output.create<String>(map['activationState'] as String),
      eventTypeInfo: map['eventTypeInfo'] == null ? null : pulumi.Output.create<EventTypeInfo>(EventTypeInfo.fromMap((map['eventTypeInfo'] as Map).cast<String, dynamic>())),
      expirationTimeIfNotActivatedUtc: map['expirationTimeIfNotActivatedUtc'] == null ? null : pulumi.Output.create<String>(map['expirationTimeIfNotActivatedUtc'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<IdentityInfo>(IdentityInfo.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      messageForActivation: map['messageForActivation'] == null ? null : pulumi.Output.create<String>(map['messageForActivation'] as String),
      partnerRegistrationImmutableId: map['partnerRegistrationImmutableId'] == null ? null : pulumi.Output.create<String>(map['partnerRegistrationImmutableId'] as String),
      partnerTopicFriendlyDescription: map['partnerTopicFriendlyDescription'] == null ? null : pulumi.Output.create<String>(map['partnerTopicFriendlyDescription'] as String),
      partnerTopicName: map['partnerTopicName'] == null ? null : pulumi.Output.create<String>(map['partnerTopicName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

