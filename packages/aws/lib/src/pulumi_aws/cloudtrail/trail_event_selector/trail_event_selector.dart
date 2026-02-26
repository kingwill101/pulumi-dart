// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../trail_event_selector_data_resource/trail_event_selector_data_resource.dart';

class TrailEventSelector {
  /// Configuration block for data events. See details below.
  final List<TrailEventSelectorDataResource>? dataResources;

  /// A set of event sources to exclude. Valid values include: `kms.amazonaws.com` and `rdsdata.amazonaws.com`. <span pulumi-lang-nodejs="`includeManagementEvents`" pulumi-lang-dotnet="`IncludeManagementEvents`" pulumi-lang-go="`includeManagementEvents`" pulumi-lang-python="`include_management_events`" pulumi-lang-yaml="`includeManagementEvents`" pulumi-lang-java="`includeManagementEvents`">`include_management_events`</span> must be set to<span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to allow this.
  final List<String>? excludeManagementEventSources;

  /// Whether to include management events for your trail. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? includeManagementEvents;

  /// Type of events to log. Valid values are `ReadOnly`, `WriteOnly`, `All`. Default value is `All`.
  final String? readWriteType;

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
      map['dataResources'] = Input.encodeList<TrailEventSelectorDataResource,
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
          : Input.decodeList<TrailEventSelectorDataResource>(
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
