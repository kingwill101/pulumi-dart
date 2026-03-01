// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'event_series.dart';
import 'event_source.dart';
import 'object_reference.dart';

/// {@template pulumi_core_v1_event_args_doc}
/// The set of arguments for Event.
/// {@endtemplate}
/// {@macro pulumi_core_v1_event_args_doc}
class EventArgs {
  /// What action was taken/failed regarding to the Regarding object.
  final pulumi.Input<String>? action;
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// The number of times this event has occurred.
  final pulumi.Input<int>? count;
  /// Time when this Event was first observed.
  final pulumi.Input<String>? eventTime;
  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.)
  final pulumi.Input<String>? firstTimestamp;
  /// The object that this event is about.
  final pulumi.Input<ObjectReference> involvedObject;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// The time at which the most recent occurrence of this event was recorded.
  final pulumi.Input<String>? lastTimestamp;
  /// A human-readable description of the status of this operation.
  final pulumi.Input<String>? message;
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ObjectMeta> metadata;
  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  final pulumi.Input<String>? reason;
  /// Optional secondary object for more complex actions.
  final pulumi.Input<ObjectReference>? related;
  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final pulumi.Input<String>? reportingComponent;
  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final pulumi.Input<String>? reportingInstance;
  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final pulumi.Input<EventSeries>? series;
  /// The component reporting this event. Should be a short machine understandable string.
  final pulumi.Input<EventSource>? source;
  /// Type of this event (Normal, Warning), new types could be added in the future
  final pulumi.Input<String>? type;

  /// Creates a new [EventArgs].
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
  EventArgs({
    String? action,
    String? apiVersion,
    int? count,
    String? eventTime,
    String? firstTimestamp,
    required ObjectReference involvedObject,
    String? kind,
    String? lastTimestamp,
    String? message,
    required ObjectMeta metadata,
    String? reason,
    ObjectReference? related,
    String? reportingComponent,
    String? reportingInstance,
    EventSeries? series,
    EventSource? source,
    String? type,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      count = pulumi.Input.asOptionalInput<int>(count),
      eventTime = pulumi.Input.asOptionalInput<String>(eventTime),
      firstTimestamp = pulumi.Input.asOptionalInput<String>(firstTimestamp),
      involvedObject = pulumi.Input.asInput<ObjectReference>(involvedObject),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      lastTimestamp = pulumi.Input.asOptionalInput<String>(lastTimestamp),
      message = pulumi.Input.asOptionalInput<String>(message),
      metadata = pulumi.Input.asInput<ObjectMeta>(metadata),
      reason = pulumi.Input.asOptionalInput<String>(reason),
      related = pulumi.Input.asOptionalInput<ObjectReference>(related),
      reportingComponent = pulumi.Input.asOptionalInput<String>(reportingComponent),
      reportingInstance = pulumi.Input.asOptionalInput<String>(reportingInstance),
      series = pulumi.Input.asOptionalInput<EventSeries>(series),
      source = pulumi.Input.asOptionalInput<EventSource>(source),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'apiVersion': ?apiVersion,
      'count': ?count,
      'eventTime': ?eventTime,
      'firstTimestamp': ?firstTimestamp,
      'involvedObject': pulumi.Input.mapInputValue<ObjectReference, Map<String, dynamic>>(involvedObject, (value) => value.toMap()),
      'kind': ?kind,
      'lastTimestamp': ?lastTimestamp,
      'message': ?message,
      'metadata': pulumi.Input.mapInputValue<ObjectMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'reason': ?reason,
      'related': ?pulumi.Input.mapOptionalInputValue<ObjectReference, Map<String, dynamic>>(related, (value) => value.toMap()),
      'reportingComponent': ?reportingComponent,
      'reportingInstance': ?reportingInstance,
      'series': ?pulumi.Input.mapOptionalInputValue<EventSeries, Map<String, dynamic>>(series, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<EventSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory EventArgs.fromMap(Map<String, dynamic> map) {
    return EventArgs(
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

