// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_type_info.dart';

/// Properties of the corresponding partner topic of a Channel.
class PartnerTopicInfo {
  /// Azure subscription ID of the subscriber. The partner topic associated with the channel will be
  /// created under this Azure subscription.
  final pulumi.Input<String>? azureSubscriptionId;

  /// Event Type Information for the partner topic. This information is provided by the publisher and can be used by the
  /// subscriber to view different types of events that are published.
  final pulumi.Input<EventTypeInfo>? eventTypeInfo;

  /// Name of the partner topic associated with the channel.
  final pulumi.Input<String>? name;

  /// Azure Resource Group of the subscriber. The partner topic associated with the channel will be
  /// created under this resource group.
  final pulumi.Input<String>? resourceGroupName;

  /// The source information is provided by the publisher to determine the scope or context from which the events
  /// are originating. This information can be used by the subscriber during the approval process of the
  /// created partner topic.
  final pulumi.Input<String>? source;

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
      'eventTypeInfo':
          ?pulumi.Input.mapOptionalInputValue<
            EventTypeInfo,
            Map<String, dynamic>
          >(eventTypeInfo, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'source': ?source,
    };
  }

  factory PartnerTopicInfo.fromMap(Map<String, dynamic> map) {
    return PartnerTopicInfo(
      azureSubscriptionId: (() {
        final guardedValue = map['azureSubscriptionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventTypeInfo: (() {
        final guardedValue = map['eventTypeInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EventTypeInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
