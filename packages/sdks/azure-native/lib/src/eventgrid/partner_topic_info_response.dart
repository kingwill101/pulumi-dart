// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info_response.dart';

/// Properties of the corresponding partner topic of a Channel.
class PartnerTopicInfoResponse {
  /// Azure subscription ID of the subscriber. The partner topic associated with the channel will be
  /// created under this Azure subscription.
  final pulumi.Input<String>? azureSubscriptionId;
  /// Event Type Information for the partner topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final pulumi.Input<EventTypeInfoResponse>? eventTypeInfo;
  /// Name of the partner topic associated with the channel.
  final pulumi.Input<String>? name;
  /// Azure Resource Group of the subscriber. The partner topic associated with the channel will be
  /// created under this resource group.
  final pulumi.Input<String>? resourceGroupName;
  /// The source information is provided by the publisher to determine the scope or context from which the events
  /// are originating. This information can be used by the subscriber during the approval process of the
  /// created partner topic.
  final pulumi.Input<String>? source;

  /// Creates a new [PartnerTopicInfoResponse].
  /// [azureSubscriptionId] Azure subscription ID of the subscriber. The partner topic associated with the channel will be
  /// [eventTypeInfo] Event Type Information for the partner topic. This information is provided by the publisher and can be used by the
  /// [name] Name of the partner topic associated with the channel.
  /// [resourceGroupName] Azure Resource Group of the subscriber. The partner topic associated with the channel will be
  /// [source] The source information is provided by the publisher to determine the scope or context from which the events
  PartnerTopicInfoResponse({
    this.azureSubscriptionId,
    this.eventTypeInfo,
    this.name,
    this.resourceGroupName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSubscriptionId': ?azureSubscriptionId,
      'eventTypeInfo': ?pulumi.Input.mapOptionalInputValue<EventTypeInfoResponse, Map<String, dynamic>>(eventTypeInfo, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'source': ?source,
    };
  }

  factory PartnerTopicInfoResponse.fromMap(Map<String, dynamic> map) {
    return PartnerTopicInfoResponse(
      azureSubscriptionId: map['azureSubscriptionId'] == null ? null : (map['azureSubscriptionId']! as String).input(),
      eventTypeInfo: map['eventTypeInfo'] == null ? null : (EventTypeInfoResponse.fromMap((map['eventTypeInfo']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      source: map['source'] == null ? null : (map['source']! as String).input(),
    );
  }
}

