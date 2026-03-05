// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_event_selector_data_resource.dart';

class TrailEventSelector {
  /// Configuration block for data events. See details below.
  final pulumi.Input<List<TrailEventSelectorDataResource>>? dataResources;
  /// A set of event sources to exclude. Valid values include: `kms.amazonaws.com` and `rdsdata.amazonaws.com`. `include_management_events` must be set to`true` to allow this.
  final pulumi.Input<List<String>>? excludeManagementEventSources;
  /// Whether to include management events for your trail. Defaults to `true`.
  final pulumi.Input<bool>? includeManagementEvents;
  /// Type of events to log. Valid values are `ReadOnly`, `WriteOnly`, `All`. Default value is `All`.
  final pulumi.Input<String>? readWriteType;

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
    return <String, dynamic>{
      'dataResources': ?pulumi.Input.mapOptionalInputValue<List<TrailEventSelectorDataResource>, List<Map<String, dynamic>>>(dataResources, (value) => pulumi.Input.encodeList<TrailEventSelectorDataResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'excludeManagementEventSources': ?excludeManagementEventSources,
      'includeManagementEvents': ?includeManagementEvents,
      'readWriteType': ?readWriteType,
    };
  }

  factory TrailEventSelector.fromMap(Map<String, dynamic> map) {
    return TrailEventSelector(
      dataResources: (() { final guardedValue = map['dataResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrailEventSelectorDataResource>(guardedValue, (value) => TrailEventSelectorDataResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      excludeManagementEventSources: (() { final guardedValue = map['excludeManagementEventSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      includeManagementEvents: (() { final guardedValue = map['includeManagementEvents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      readWriteType: (() { final guardedValue = map['readWriteType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

