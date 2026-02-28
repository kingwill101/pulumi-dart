// ignore_for_file: unused_element, unnecessary_cast

import 'event_action_event_revision_published.dart';

class EventActionEvent {
  /// Configuration for a Revision Published event.
  /// Described in `revision_published` Configuration Block below.
  final EventActionEventRevisionPublished revisionPublished;

  /// Creates a new [EventActionEvent].
  /// [revisionPublished] Configuration for a Revision Published event.
  EventActionEvent({
    required this.revisionPublished,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['revisionPublished'] = revisionPublished.toMap();
    return map;
  }

  factory EventActionEvent.fromMap(Map<String, dynamic> map) {
    return EventActionEvent(
      revisionPublished: EventActionEventRevisionPublished.fromMap(
          (map['revisionPublished'] as Map).cast<String, dynamic>()),
    );
  }
}
