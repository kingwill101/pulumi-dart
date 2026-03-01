// ignore_for_file: unused_element, unnecessary_cast

import 'event_action_action_export_revision_to_s3.dart';

class EventActionAction {
  /// Configuration for an Export Revision to S3 action.
  /// Described in `export_revision_to_s3` Configuration Block
  final EventActionActionExportRevisionToS3 exportRevisionToS3;

  /// Creates a new [EventActionAction].
  /// [exportRevisionToS3] Configuration for an Export Revision to S3 action.
  EventActionAction({required this.exportRevisionToS3});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'exportRevisionToS3': exportRevisionToS3.toMap()};
  }

  factory EventActionAction.fromMap(Map<String, dynamic> map) {
    return EventActionAction(
      exportRevisionToS3: EventActionActionExportRevisionToS3.fromMap(
        (map['exportRevisionToS3'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
