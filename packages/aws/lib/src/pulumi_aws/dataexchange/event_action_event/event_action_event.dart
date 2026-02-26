// ignore_for_file: unused_element, unnecessary_cast

import '../event_action_event_revision_published/event_action_event_revision_published.dart';

class EventActionEvent {
  /// Configuration for a Revision Published event.
  /// Described in <span pulumi-lang-nodejs="`revisionPublished`" pulumi-lang-dotnet="`RevisionPublished`" pulumi-lang-go="`revisionPublished`" pulumi-lang-python="`revision_published`" pulumi-lang-yaml="`revisionPublished`" pulumi-lang-java="`revisionPublished`">`revision_published`</span> Configuration Block below.
  final EventActionEventRevisionPublished revisionPublished;

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
