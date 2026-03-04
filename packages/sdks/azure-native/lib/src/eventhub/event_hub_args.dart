// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capture_description.dart';
import 'entity_status.dart';
import 'retention_description.dart';

/// {@template pulumi_eventhub_event_hub_args_doc}
/// The set of arguments for EventHub.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_args_doc}
class EventHubArgs {
  /// Properties of capture description
  final pulumi.Input<CaptureDescription>? captureDescription;

  /// The Event Hub name
  final pulumi.Input<String>? eventHubName;

  /// Number of days to retain the events for this Event Hub, value should be 1 to 7 days
  final pulumi.Input<double>? messageRetentionInDays;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions.
  final pulumi.Input<double>? partitionCount;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Event Hub retention settings
  final pulumi.Input<RetentionDescription>? retentionDescription;

  /// Enumerates the possible values for the status of the Event Hub.
  final pulumi.Input<EntityStatus>? status;

  /// Gets and Sets Metadata of User.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [EventHubArgs].
  /// [captureDescription] Properties of capture description
  /// [eventHubName] The Event Hub name
  /// [messageRetentionInDays] Number of days to retain the events for this Event Hub, value should be 1 to 7 days
  /// [namespaceName] The Namespace name
  /// [partitionCount] Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions.
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [retentionDescription] Event Hub retention settings
  /// [status] Enumerates the possible values for the status of the Event Hub.
  /// [userMetadata] Gets and Sets Metadata of User.
  EventHubArgs({
    this.captureDescription,
    this.eventHubName,
    this.messageRetentionInDays,
    required this.namespaceName,
    this.partitionCount,
    required this.resourceGroupName,
    this.retentionDescription,
    this.status,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureDescription':
          ?pulumi.Input.mapOptionalInputValue<
            CaptureDescription,
            Map<String, dynamic>
          >(captureDescription, (value) => value.toMap()),
      'eventHubName': ?eventHubName,
      'messageRetentionInDays': ?messageRetentionInDays,
      'namespaceName': namespaceName,
      'partitionCount': ?partitionCount,
      'resourceGroupName': resourceGroupName,
      'retentionDescription':
          ?pulumi.Input.mapOptionalInputValue<
            RetentionDescription,
            Map<String, dynamic>
          >(retentionDescription, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(
        status,
        (value) => value.wireValue,
      ),
      'userMetadata': ?userMetadata,
    };
  }

  factory EventHubArgs.fromMap(Map<String, dynamic> map) {
    return EventHubArgs(
      captureDescription: (() {
        final guardedValue = map['captureDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CaptureDescription.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      eventHubName: (() {
        final guardedValue = map['eventHubName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageRetentionInDays: (() {
        final guardedValue = map['messageRetentionInDays'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      partitionCount: (() {
        final guardedValue = map['partitionCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      retentionDescription: (() {
        final guardedValue = map['retentionDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RetentionDescription.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EntityStatus.fromValue(guardedValue as String),
        );
      })(),
      userMetadata: (() {
        final guardedValue = map['userMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
