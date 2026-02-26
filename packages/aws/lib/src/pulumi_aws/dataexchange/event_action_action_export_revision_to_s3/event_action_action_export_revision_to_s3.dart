// ignore_for_file: unused_element, unnecessary_cast

import '../event_action_action_export_revision_to_s3_encryption/event_action_action_export_revision_to_s3_encryption.dart';
import '../event_action_action_export_revision_to_s3_revision_destination/event_action_action_export_revision_to_s3_revision_destination.dart';

class EventActionActionExportRevisionToS3 {
  /// Configures server-side encryption of the exported revision.
  /// Described in <span pulumi-lang-nodejs="`encryption`" pulumi-lang-dotnet="`Encryption`" pulumi-lang-go="`encryption`" pulumi-lang-python="`encryption`" pulumi-lang-yaml="`encryption`" pulumi-lang-java="`encryption`">`encryption`</span> Configuration Block below.
  final EventActionActionExportRevisionToS3Encryption? encryption;

  /// Configures the S3 destination of the exported revision.
  /// Described in <span pulumi-lang-nodejs="`revisionDestination`" pulumi-lang-dotnet="`RevisionDestination`" pulumi-lang-go="`revisionDestination`" pulumi-lang-python="`revision_destination`" pulumi-lang-yaml="`revisionDestination`" pulumi-lang-java="`revisionDestination`">`revision_destination`</span> Configuration Block below.
  final EventActionActionExportRevisionToS3RevisionDestination
      revisionDestination;

  EventActionActionExportRevisionToS3({
    this.encryption,
    required this.revisionDestination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionValue = encryption;
    if (encryptionValue != null) {
      map['encryption'] = encryptionValue.toMap();
    }
    map['revisionDestination'] = revisionDestination.toMap();
    return map;
  }

  factory EventActionActionExportRevisionToS3.fromMap(
      Map<String, dynamic> map) {
    return EventActionActionExportRevisionToS3(
      encryption: map['encryption'] == null
          ? null
          : EventActionActionExportRevisionToS3Encryption.fromMap(
              (map['encryption'] as Map).cast<String, dynamic>()),
      revisionDestination:
          EventActionActionExportRevisionToS3RevisionDestination.fromMap(
              (map['revisionDestination'] as Map).cast<String, dynamic>()),
    );
  }
}
