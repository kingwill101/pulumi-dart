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
    CaptureDescription? captureDescription,
    String? eventHubName,
    double? messageRetentionInDays,
    required String namespaceName,
    double? partitionCount,
    required String resourceGroupName,
    RetentionDescription? retentionDescription,
    EntityStatus? status,
    String? userMetadata,
  }) :
      captureDescription = pulumi.Input.asOptionalInput<CaptureDescription>(captureDescription),
      eventHubName = pulumi.Input.asOptionalInput<String>(eventHubName),
      messageRetentionInDays = pulumi.Input.asOptionalInput<double>(messageRetentionInDays),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      partitionCount = pulumi.Input.asOptionalInput<double>(partitionCount),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      retentionDescription = pulumi.Input.asOptionalInput<RetentionDescription>(retentionDescription),
      status = pulumi.Input.asOptionalInput<EntityStatus>(status),
      userMetadata = pulumi.Input.asOptionalInput<String>(userMetadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'captureDescription': ?pulumi.Input.mapOptionalInputValue<CaptureDescription, Map<String, dynamic>>(captureDescription, (value) => value.toMap()),
      'eventHubName': ?eventHubName,
      'messageRetentionInDays': ?messageRetentionInDays,
      'namespaceName': namespaceName,
      'partitionCount': ?partitionCount,
      'resourceGroupName': resourceGroupName,
      'retentionDescription': ?pulumi.Input.mapOptionalInputValue<RetentionDescription, Map<String, dynamic>>(retentionDescription, (value) => value.toMap()),
      'status': ?pulumi.Input.mapOptionalInputValue<EntityStatus, String>(status, (value) => value.value),
      'userMetadata': ?userMetadata,
    };
  }

  factory EventHubArgs.fromMap(Map<String, dynamic> map) {
    return EventHubArgs(
      captureDescription: map['captureDescription'] == null ? null : CaptureDescription.fromMap((map['captureDescription'] as Map).cast<String, dynamic>()),
      eventHubName: map['eventHubName'] == null ? null : map['eventHubName'] as String,
      messageRetentionInDays: map['messageRetentionInDays'] == null ? null : map['messageRetentionInDays'] as double,
      namespaceName: map['namespaceName'] as String,
      partitionCount: map['partitionCount'] == null ? null : map['partitionCount'] as double,
      resourceGroupName: map['resourceGroupName'] as String,
      retentionDescription: map['retentionDescription'] == null ? null : RetentionDescription.fromMap((map['retentionDescription'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : EntityStatus.fromValue(map['status'] as String),
      userMetadata: map['userMetadata'] == null ? null : map['userMetadata'] as String,
    );
  }
}

