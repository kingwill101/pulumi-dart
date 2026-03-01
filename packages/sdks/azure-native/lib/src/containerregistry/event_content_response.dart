// ignore_for_file: unused_element, unnecessary_cast

import 'actor_response.dart';
import 'request_response.dart';
import 'source_response.dart';
import 'target_response.dart';

/// The content of the event request message.
class EventContentResponse {
  /// The action that encompasses the provided event.
  final String? action;
  /// The agent that initiated the event. For most situations, this could be from the authorization context of the request.
  final ActorResponse? actor;
  /// The event ID.
  final String? id;
  /// The request that generated the event.
  final RequestResponse? request;
  /// The registry node that generated the event. Put differently, while the actor initiates the event, the source generates it.
  final SourceResponse? source;
  /// The target of the event.
  final TargetResponse? target;
  /// The time at which the event occurred.
  final String? timestamp;

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
      'actor': ?actor == null ? null : actor!.toMap(),
      'id': ?id,
      'request': ?request == null ? null : request!.toMap(),
      'source': ?source == null ? null : source!.toMap(),
      'target': ?target == null ? null : target!.toMap(),
      'timestamp': ?timestamp,
    };
  }

  factory EventContentResponse.fromMap(Map<String, dynamic> map) {
    return EventContentResponse(
      action: map['action'] == null ? null : map['action'] as String,
      actor: map['actor'] == null ? null : ActorResponse.fromMap((map['actor'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      request: map['request'] == null ? null : RequestResponse.fromMap((map['request'] as Map).cast<String, dynamic>()),
      source: map['source'] == null ? null : SourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      target: map['target'] == null ? null : TargetResponse.fromMap((map['target'] as Map).cast<String, dynamic>()),
      timestamp: map['timestamp'] == null ? null : map['timestamp'] as String,
    );
  }
}

