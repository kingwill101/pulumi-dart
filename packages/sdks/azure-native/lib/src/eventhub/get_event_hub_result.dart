// ignore_for_file: unused_element, unnecessary_cast

import 'capture_description_response.dart';
import 'retention_description_response.dart';
import 'system_data_response.dart';

/// Result data returned by getEventHub.
class GetEventHubResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Properties of capture description
  final CaptureDescriptionResponse? captureDescription;
  /// Exact time the Event Hub was created.
  final String createdAt;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Number of days to retain the events for this Event Hub, value should be 1 to 7 days
  final double? messageRetentionInDays;
  /// The name of the resource
  final String name;
  /// Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions.
  final double? partitionCount;
  /// Current number of shards on the Event Hub.
  final List<String> partitionIds;
  /// Event Hub retention settings
  final RetentionDescriptionResponse? retentionDescription;
  /// Enumerates the possible values for the status of the Event Hub.
  final String? status;
  /// The system meta data relating to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  final String type;
  /// The exact time the message was updated.
  final String updatedAt;
  /// Gets and Sets Metadata of User.
  final String? userMetadata;

  /// Creates a new [GetEventHubResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [captureDescription] Properties of capture description
  /// [createdAt] Exact time the Event Hub was created.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [messageRetentionInDays] Number of days to retain the events for this Event Hub, value should be 1 to 7 days
  /// [name] The name of the resource
  /// [partitionCount] Number of partitions created for the Event Hub, allowed values are from 1 to 32 partitions.
  /// [partitionIds] Current number of shards on the Event Hub.
  /// [retentionDescription] Event Hub retention settings
  /// [status] Enumerates the possible values for the status of the Event Hub.
  /// [systemData] The system meta data relating to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.EventHub/Namespaces" or "Microsoft.EventHub/Namespaces/EventHubs"
  /// [updatedAt] The exact time the message was updated.
  /// [userMetadata] Gets and Sets Metadata of User.
  const GetEventHubResult({
    required this.azureApiVersion,
    this.captureDescription,
    required this.createdAt,
    required this.id,
    required this.location,
    this.messageRetentionInDays,
    required this.name,
    this.partitionCount,
    required this.partitionIds,
    this.retentionDescription,
    this.status,
    required this.systemData,
    required this.type,
    required this.updatedAt,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'captureDescription': ?captureDescription?.toMap(),
      'createdAt': createdAt,
      'id': id,
      'location': location,
      'messageRetentionInDays': ?messageRetentionInDays,
      'name': name,
      'partitionCount': ?partitionCount,
      'partitionIds': partitionIds,
      'retentionDescription': ?retentionDescription?.toMap(),
      'status': ?status,
      'systemData': systemData.toMap(),
      'type': type,
      'updatedAt': updatedAt,
      'userMetadata': ?userMetadata,
    };
  }

  factory GetEventHubResult.fromMap(Map<String, dynamic> map) {
    return GetEventHubResult(
      azureApiVersion: map['azureApiVersion'] as String,
      captureDescription: (() { final guardedValue = map['captureDescription']; if (guardedValue == null) return null; return CaptureDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      messageRetentionInDays: (() { final guardedValue = map['messageRetentionInDays']; if (guardedValue == null) return null; return guardedValue as double; })(),
      name: map['name'] as String,
      partitionCount: (() { final guardedValue = map['partitionCount']; if (guardedValue == null) return null; return guardedValue as double; })(),
      partitionIds: (map['partitionIds'] as List).cast<String>(),
      retentionDescription: (() { final guardedValue = map['retentionDescription']; if (guardedValue == null) return null; return RetentionDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      updatedAt: map['updatedAt'] as String,
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
