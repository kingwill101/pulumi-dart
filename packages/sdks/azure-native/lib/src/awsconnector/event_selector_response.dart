// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_resource_response.dart';

/// Definition of EventSelector
class EventSelectorResponse {
  /// Property dataResources
  final List<DataResourceResponse>? dataResources;
  /// An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter), or it can filter out AWS Key Management Service events by containing 'kms.amazonaws.com'. By default, ExcludeManagementEventSources is empty, and AWS KMS events are included in events that are logged to your trail.
  final List<String>? excludeManagementEventSources;
  /// Specify if you want your event selector to include management events for your trail.
  final bool? includeManagementEvents;
  /// Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 GetConsoleOutput is a read-only API operation and RunInstances is a write-only API operation.
  final String? readWriteType;

  /// Creates a new [EventSelectorResponse].
  /// [dataResources] Property dataResources
  /// [excludeManagementEventSources] An optional list of service event sources from which you do not want management events to be logged on your trail. In this release, the list can be empty (disables the filter), or it can filter out AWS Key Management Service events by containing 'kms.amazonaws.com'. By default, ExcludeManagementEventSources is empty, and AWS KMS events are included in events that are logged to your trail.
  /// [includeManagementEvents] Specify if you want your event selector to include management events for your trail.
  /// [readWriteType] Specify if you want your trail to log read-only events, write-only events, or all. For example, the EC2 GetConsoleOutput is a read-only API operation and RunInstances is a write-only API operation.
  EventSelectorResponse({
    this.dataResources,
    this.excludeManagementEventSources,
    this.includeManagementEvents,
    this.readWriteType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataResources': ?dataResources == null ? null : pulumi.Input.encodeList<DataResourceResponse, Map<String, dynamic>>(dataResources!, (value) => value.toMap()),
      'excludeManagementEventSources': ?excludeManagementEventSources,
      'includeManagementEvents': ?includeManagementEvents,
      'readWriteType': ?readWriteType,
    };
  }

  factory EventSelectorResponse.fromMap(Map<String, dynamic> map) {
    return EventSelectorResponse(
      dataResources: map['dataResources'] == null ? null : pulumi.Input.decodeList<DataResourceResponse>(map['dataResources'], (value) => DataResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      excludeManagementEventSources: map['excludeManagementEventSources'] == null ? null : (map['excludeManagementEventSources'] as List).cast<String>(),
      includeManagementEvents: map['includeManagementEvents'] == null ? null : map['includeManagementEvents'] as bool,
      readWriteType: map['readWriteType'] == null ? null : map['readWriteType'] as String,
    );
  }
}

