// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_event_selector_data_resource.dart';

class TrailEventSelector {
  /// Configuration block for data events. See details below.
  final List<TrailEventSelectorDataResource>? dataResources;

  /// A set of event sources to exclude. Valid values include: `kms.amazonaws.com` and `rdsdata.amazonaws.com`. `include_management_events` must be set to`true` to allow this.
  final List<String>? excludeManagementEventSources;

  /// Whether to include management events for your trail. Defaults to `true`.
  final bool? includeManagementEvents;

  /// Type of events to log. Valid values are `ReadOnly`, `WriteOnly`, `All`. Default value is `All`.
  final String? readWriteType;

  /// Creates a new [TrailEventSelector].
  /// [dataResources] Configuration block for data events. See details below.
  /// [excludeManagementEventSources] A set of event sources to exclude. Valid values include: `kms.amazonaws.com` and `rdsdata.amazonaws.com`. `include_management_events` must be set to`true` to allow this.
  /// [includeManagementEvents] Whether to include management events for your trail. Defaults to `true`.
  /// [readWriteType] Type of events to log. Valid values are `ReadOnly`, `WriteOnly`, `All`. Default value is `All`.
  TrailEventSelector({
    this.dataResources,
    this.excludeManagementEventSources,
    this.includeManagementEvents,
    this.readWriteType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dataResourcesValue = dataResources;
    if (dataResourcesValue != null) {
      map['dataResources'] = pulumi.Input.encodeList<
          TrailEventSelectorDataResource,
          Map<String, dynamic>>(dataResourcesValue, (value) => value.toMap());
    }
    final excludeManagementEventSourcesValue = excludeManagementEventSources;
    if (excludeManagementEventSourcesValue != null) {
      map['excludeManagementEventSources'] = excludeManagementEventSourcesValue;
    }
    final includeManagementEventsValue = includeManagementEvents;
    if (includeManagementEventsValue != null) {
      map['includeManagementEvents'] = includeManagementEventsValue;
    }
    final readWriteTypeValue = readWriteType;
    if (readWriteTypeValue != null) {
      map['readWriteType'] = readWriteTypeValue;
    }
    return map;
  }

  factory TrailEventSelector.fromMap(Map<String, dynamic> map) {
    return TrailEventSelector(
      dataResources: map['dataResources'] == null
          ? null
          : pulumi.Input.decodeList<TrailEventSelectorDataResource>(
              map['dataResources'],
              (value) => TrailEventSelectorDataResource.fromMap(
                  (value as Map).cast<String, dynamic>())),
      excludeManagementEventSources:
          map['excludeManagementEventSources'] == null
              ? null
              : (map['excludeManagementEventSources'] as List).cast<String>(),
      includeManagementEvents: map['includeManagementEvents'] == null
          ? null
          : map['includeManagementEvents'] as bool,
      readWriteType:
          map['readWriteType'] == null ? null : map['readWriteType'] as String,
    );
  }
}
