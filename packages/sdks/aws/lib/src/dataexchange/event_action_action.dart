// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_action_action_export_revision_to_s3.dart';

class EventActionAction {
  /// Configuration for an Export Revision to S3 action.
  /// Described in `export_revision_to_s3` Configuration Block
  final pulumi.Input<EventActionActionExportRevisionToS3> exportRevisionToS3;

  /// Creates a new [EventActionAction].
  /// [exportRevisionToS3] Configuration for an Export Revision to S3 action.
  const EventActionAction({
    required this.exportRevisionToS3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportRevisionToS3': pulumi.Input.mapInputValue<EventActionActionExportRevisionToS3, Map<String, dynamic>>(exportRevisionToS3, (value) => value.toMap()),
    };
  }

  factory EventActionAction.fromMap(Map<String, dynamic> map) {
    return EventActionAction(
      exportRevisionToS3: pulumi.Input.fromValue(EventActionActionExportRevisionToS3.fromMap((map['exportRevisionToS3']! as Map).cast<String, dynamic>())),
    );
  }
}

