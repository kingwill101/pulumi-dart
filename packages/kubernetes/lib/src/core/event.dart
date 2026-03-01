// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'event_series.dart';
import 'event_source.dart';
import 'object_reference.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// What action was taken/failed regarding to the Regarding object.
  final String? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// The number of times this event has occurred.
  final int? count;
  /// Time when this Event was first observed.
  final String? eventTime;
  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  final String? firstTimestamp;
  /// The object that this event is about.
  final ObjectReference involvedObject;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// The time at which the most recent occurrence of this event was recorded.
  final String? lastTimestamp;
  /// A human-readable description of the status of this operation.
  final String? message;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final ObjectMeta metadata;
  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  final String? reason;
  /// Optional secondary object for more complex actions.
  final ObjectReference? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final String? reportingComponent;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final String? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeries? series;
  /// The component reporting this event. Should be a short machine understandable string.
  final EventSource? source;
  /// Type of this event (Normal, Warning), new types could be added in the future
  final String? type;

  /// Creates a new [Event].
  /// [action] What action was taken/failed regarding to the Regarding object.
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [count] The number of times this event has occurred.
  /// [eventTime] Time when this Event was first observed.
  /// [firstTimestamp] The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  /// [involvedObject] The object that this event is about.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [lastTimestamp] The time at which the most recent occurrence of this event was recorded.
  /// [message] A human-readable description of the status of this operation.
  /// [metadata] Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// [reason] This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  /// [related] Optional secondary object for more complex actions.
  /// [reportingComponent] Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  /// [reportingInstance] ID of the controller instance, e.g. `kubelet-xyzf`.
  /// [series] Data about the Event series this event represents or nil if it's a singleton Event.
  /// [source] The component reporting this event. Should be a short machine understandable string.
  /// [type] Type of this event (Normal, Warning), new types could be added in the future
  Event({
    this.action,
    this.apiVersion,
    this.count,
    this.eventTime,
    this.firstTimestamp,
    required this.involvedObject,
    this.kind,
    this.lastTimestamp,
    this.message,
    required this.metadata,
    this.reason,
    this.related,
    this.reportingComponent,
    this.reportingInstance,
    this.series,
    this.source,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'count': ?count,
      'eventTime': ?eventTime,
      'firstTimestamp': ?firstTimestamp,
      'involvedObject': involvedObject.toMap(),
      'kind': ?kind,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'metadata': metadata.toMap(),
      'reason': ?reason,
      'related': ?related == null ? null : related!.toMap(),
      'reportingComponent': ?reportingComponent,
      'reportingInstance': ?reportingInstance,
      'series': ?series == null ? null : series!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'type': ?type,
    };
  }

  factory Event.fromMap(Map<String, dynamic> map) {
    return Event(
      action: map['action'] == null ? null : map['action'] as String,
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      count: map['count'] == null ? null : map['count'] as int,
      eventTime: map['eventTime'] == null ? null : map['eventTime'] as String,
      firstTimestamp: map['firstTimestamp'] == null ? null : map['firstTimestamp'] as String,
      involvedObject: ObjectReference.fromMap((map['involvedObject'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      lastTimestamp: map['lastTimestamp'] == null ? null : map['lastTimestamp'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      metadata: ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      reason: map['reason'] == null ? null : map['reason'] as String,
      related: map['related'] == null ? null : ObjectReference.fromMap((map['related'] as Map).cast<String, dynamic>()),
      reportingComponent: map['reportingComponent'] == null ? null : map['reportingComponent'] as String,
      reportingInstance: map['reportingInstance'] == null ? null : map['reportingInstance'] as String,
      series: map['series'] == null ? null : EventSeries.fromMap((map['series'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : EventSource.fromMap((map['source'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

