// ignore_for_file: unused_element, unnecessary_cast

import '../event_action_action_export_revision_to_s3/event_action_action_export_revision_to_s3.dart';

class EventActionAction {
  /// Configuration for an Export Revision to S3 action.
  /// Described in <span pulumi-lang-nodejs="`exportRevisionToS3`" pulumi-lang-dotnet="`ExportRevisionToS3`" pulumi-lang-go="`exportRevisionToS3`" pulumi-lang-python="`export_revision_to_s3`" pulumi-lang-yaml="`exportRevisionToS3`" pulumi-lang-java="`exportRevisionToS3`">`export_revision_to_s3`</span> Configuration Block
  final EventActionActionExportRevisionToS3 exportRevisionToS3;

  EventActionAction({
    required this.exportRevisionToS3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exportRevisionToS3'] = exportRevisionToS3.toMap();
    return map;
  }

  factory EventActionAction.fromMap(Map<String, dynamic> map) {
    return EventActionAction(
      exportRevisionToS3: EventActionActionExportRevisionToS3.fromMap(
          (map['exportRevisionToS3'] as Map).cast<String, dynamic>()),
    );
  }
}
