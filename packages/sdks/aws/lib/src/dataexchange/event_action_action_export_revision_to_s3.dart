// ignore_for_file: unused_element, unnecessary_cast

import 'event_action_action_export_revision_to_s3_encryption.dart';
import 'event_action_action_export_revision_to_s3_revision_destination.dart';

class EventActionActionExportRevisionToS3 {
  /// Configures server-side encryption of the exported revision.
  /// Described in `encryption` Configuration Block below.
  final EventActionActionExportRevisionToS3Encryption? encryption;
  /// Configures the S3 destination of the exported revision.
  /// Described in `revision_destination` Configuration Block below.
  final EventActionActionExportRevisionToS3RevisionDestination revisionDestination;

  /// Creates a new [EventActionActionExportRevisionToS3].
  /// [encryption] Configures server-side encryption of the exported revision.
  /// [revisionDestination] Configures the S3 destination of the exported revision.
  EventActionActionExportRevisionToS3({
    this.encryption,
    required this.revisionDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryption': ?encryption == null ? null : encryption!.toMap(),
      'revisionDestination': revisionDestination.toMap(),
    };
  }

  factory EventActionActionExportRevisionToS3.fromMap(Map<String, dynamic> map) {
    return EventActionActionExportRevisionToS3(
      encryption: map['encryption'] == null ? null : EventActionActionExportRevisionToS3Encryption.fromMap((map['encryption'] as Map).cast<String, dynamic>()),
      revisionDestination: EventActionActionExportRevisionToS3RevisionDestination.fromMap((map['revisionDestination'] as Map).cast<String, dynamic>()),
    );
  }
}

