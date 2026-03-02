// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_action_event_revision_published.dart';

class EventActionEvent {
  /// Configuration for a Revision Published event.
  /// Described in `revision_published` Configuration Block below.
  final pulumi.Input<EventActionEventRevisionPublished> revisionPublished;

  /// Creates a new [EventActionEvent].
  /// [revisionPublished] Configuration for a Revision Published event.
  EventActionEvent({
    required this.revisionPublished,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionPublished': pulumi.Input.mapInputValue<EventActionEventRevisionPublished, Map<String, dynamic>>(revisionPublished, (value) => value.toMap()),
    };
  }

  factory EventActionEvent.fromMap(Map<String, dynamic> map) {
    return EventActionEvent(
      revisionPublished: (EventActionEventRevisionPublished.fromMap((map['revisionPublished'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

