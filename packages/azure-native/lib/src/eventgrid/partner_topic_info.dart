// ignore_for_file: unused_element, unnecessary_cast

import 'event_type_info.dart';

/// Properties of the corresponding partner topic of a Channel.
class PartnerTopicInfo {
  /// Azure subscription ID of the subscriber. The partner topic associated with the channel will be
  /// created under this Azure subscription.
  final String? azureSubscriptionId;
  /// Event Type Information for the partner topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final EventTypeInfo? eventTypeInfo;
  /// Name of the partner topic associated with the channel.
  final String? name;
  /// Azure Resource Group of the subscriber. The partner topic associated with the channel will be
  /// created under this resource group.
  final String? resourceGroupName;
  /// The source information is provided by the publisher to determine the scope or context from which the events
  /// are originating. This information can be used by the subscriber during the approval process of the
  /// created partner topic.
  final String? source;

  /// Creates a new [PartnerTopicInfo].
  /// [azureSubscriptionId] Azure subscription ID of the subscriber. The partner topic associated with the channel will be
  /// [eventTypeInfo] Event Type Information for the partner topic. This information is provided by the publisher and can be used by the
  /// [name] Name of the partner topic associated with the channel.
  /// [resourceGroupName] Azure Resource Group of the subscriber. The partner topic associated with the channel will be
  /// [source] The source information is provided by the publisher to determine the scope or context from which the events
  PartnerTopicInfo({
    this.azureSubscriptionId,
    this.eventTypeInfo,
    this.name,
    this.resourceGroupName,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureSubscriptionId': ?azureSubscriptionId,
      'eventTypeInfo': ?eventTypeInfo == null ? null : eventTypeInfo!.toMap(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'source': ?source,
    };
  }

  factory PartnerTopicInfo.fromMap(Map<String, dynamic> map) {
    return PartnerTopicInfo(
      azureSubscriptionId: map['azureSubscriptionId'] == null ? null : map['azureSubscriptionId'] as String,
      eventTypeInfo: map['eventTypeInfo'] == null ? null : EventTypeInfo.fromMap((map['eventTypeInfo'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] == null ? null : map['resourceGroupName'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

