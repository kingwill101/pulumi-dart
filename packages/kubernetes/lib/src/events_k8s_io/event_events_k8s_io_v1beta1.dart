// ignore_for_file: unused_element, unnecessary_cast

import '../core/event_source.dart';
import '../core/object_reference.dart';
import '../meta/object_meta.dart';
import 'event_series_events_k8s_io_v1beta1.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system.
class EventEventsK8sIoV1beta1 {
  /// What action was taken/failed regarding to the regarding object.
  final String? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final int? deprecatedCount;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final String? deprecatedFirstTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final String? deprecatedLastTimestamp;
  /// Deprecated field assuring backward compatibility with core.v1 Event type
  final EventSource? deprecatedSource;
  /// Required. Time when this Event was first observed.
  final String eventTime;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  final ObjectMeta? metadata;
  /// Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final String? note;
  /// Why the action was taken.
  final String? reason;
  /// The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final ObjectReference? regarding;
  /// Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final ObjectReference? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final String? reportingController;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final String? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeriesEventsK8sIoV1beta1? series;
  /// Type of this event (Normal, Warning), new types could be added in the future.
  final String? type;

  /// Creates a new [EventEventsK8sIoV1beta1].
  /// [action] What action was taken/failed regarding to the regarding object.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [deprecatedCount] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedFirstTimestamp] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedLastTimestamp] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [deprecatedSource] Deprecated field assuring backward compatibility with core.v1 Event type
  /// [eventTime] Required. Time when this Event was first observed.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Optional.
  /// [note] Optional. A human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  /// [reason] Why the action was taken.
  /// [regarding] The object this Event is about. In most cases it's an Object reporting controller implements. E.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  /// [related] Optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  /// [reportingController] Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  /// [reportingInstance] ID of the controller instance, e.g. `kubelet-xyzf`.
  /// [series] Data about the Event series this event represents or nil if it's a singleton Event.
  /// [type] Type of this event (Normal, Warning), new types could be added in the future.
  EventEventsK8sIoV1beta1({
    this.action,
    this.apiVersion,
    this.deprecatedCount,
    this.deprecatedFirstTimestamp,
    this.deprecatedLastTimestamp,
    this.deprecatedSource,
    required this.eventTime,
    this.kind,
    this.metadata,
    this.note,
    this.reason,
    this.regarding,
    this.related,
    this.reportingController,
    this.reportingInstance,
    this.series,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'deprecatedCount': ?deprecatedCount,
      'deprecatedFirstTimestamp': ?deprecatedFirstTimestamp,
      'deprecatedLastTimestamp': ?deprecatedLastTimestamp,
      'deprecatedSource': ?deprecatedSource == null ? null : deprecatedSource!.toMap(),
      'eventTime': eventTime,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'note': ?note,
      'reason': ?reason,
      'regarding': ?regarding == null ? null : regarding!.toMap(),
      'related': ?related == null ? null : related!.toMap(),
      'reportingController': ?reportingController,
      'reportingInstance': ?reportingInstance,
      'series': ?series == null ? null : series!.toMap(),
      'type': ?type,
    };
  }

  factory EventEventsK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return EventEventsK8sIoV1beta1(
      action: map['action'] == null ? null : map['action'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      deprecatedCount: map['deprecatedCount'] == null ? null : map['deprecatedCount'] as int,
      deprecatedFirstTimestamp: map['deprecatedFirstTimestamp'] == null ? null : map['deprecatedFirstTimestamp'] as String,
      deprecatedLastTimestamp: map['deprecatedLastTimestamp'] == null ? null : map['deprecatedLastTimestamp'] as String,
      deprecatedSource: map['deprecatedSource'] == null ? null : EventSource.fromMap((map['deprecatedSource'] as Map).cast<String, dynamic>()),
      eventTime: map['eventTime'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      note: map['note'] == null ? null : map['note'] as String,
      reason: map['reason'] == null ? null : map['reason'] as String,
      regarding: map['regarding'] == null ? null : ObjectReference.fromMap((map['regarding'] as Map).cast<String, dynamic>()),
      related: map['related'] == null ? null : ObjectReference.fromMap((map['related'] as Map).cast<String, dynamic>()),
      reportingController: map['reportingController'] == null ? null : map['reportingController'] as String,
      reportingInstance: map['reportingInstance'] == null ? null : map['reportingInstance'] as String,
      series: map['series'] == null ? null : EventSeriesEventsK8sIoV1beta1.fromMap((map['series'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

