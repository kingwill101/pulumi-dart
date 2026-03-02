// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'actor_response.dart';
import 'request_response.dart';
import 'source_response.dart';
import 'target_response.dart';

/// The content of the event request message.
class EventContentResponse {
  /// The action that encompasses the provided event.
  final pulumi.Input<String>? action;
  /// The agent that initiated the event. For most situations, this could be from the authorization context of the request.
  final pulumi.Input<ActorResponse>? actor;
  /// The event ID.
  final pulumi.Input<String>? id;
  /// The request that generated the event.
  final pulumi.Input<RequestResponse>? request;
  /// The registry node that generated the event. Put differently, while the actor initiates the event, the source generates it.
  final pulumi.Input<SourceResponse>? source;
  /// The target of the event.
  final pulumi.Input<TargetResponse>? target;
  /// The time at which the event occurred.
  final pulumi.Input<String>? timestamp;

  /// Creates a new [EventContentResponse].
  /// [action] The action that encompasses the provided event.
  /// [actor] The agent that initiated the event. For most situations, this could be from the authorization context of the request.
  /// [id] The event ID.
  /// [request] The request that generated the event.
  /// [source] The registry node that generated the event. Put differently, while the actor initiates the event, the source generates it.
  /// [target] The target of the event.
  /// [timestamp] The time at which the event occurred.
  EventContentResponse({
    this.action,
    this.actor,
    this.id,
    this.request,
    this.source,
    this.target,
    this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'actor': ?pulumi.Input.mapOptionalInputValue<ActorResponse, Map<String, dynamic>>(actor, (value) => value.toMap()),
      'id': ?id,
      'request': ?pulumi.Input.mapOptionalInputValue<RequestResponse, Map<String, dynamic>>(request, (value) => value.toMap()),
      'source': ?pulumi.Input.mapOptionalInputValue<SourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': ?pulumi.Input.mapOptionalInputValue<TargetResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
      'timestamp': ?timestamp,
    };
  }

  factory EventContentResponse.fromMap(Map<String, dynamic> map) {
    return EventContentResponse(
      action: map['action'] == null ? null : (map['action'] as String).input(),
      actor: map['actor'] == null ? null : (ActorResponse.fromMap((map['actor'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      request: map['request'] == null ? null : (RequestResponse.fromMap((map['request'] as Map).cast<String, dynamic>())).input(),
      source: map['source'] == null ? null : (SourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      target: map['target'] == null ? null : (TargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
      timestamp: map['timestamp'] == null ? null : (map['timestamp'] as String).input(),
    );
  }
}

