// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventActionActionExportRevisionToS3RevisionDestination {
  /// The S3 bucket where the revision will be exported.
  final pulumi.Input<String> bucket;

  /// Pattern for naming revisions in the S3 bucket.
  /// Defaults to `${Revision.CreatedAt}/${Asset.Name}`.
  final pulumi.Input<String>? keyPattern;

  /// Creates a new [EventActionActionExportRevisionToS3RevisionDestination].
  /// [bucket] The S3 bucket where the revision will be exported.
  /// [keyPattern] Pattern for naming revisions in the S3 bucket.
  EventActionActionExportRevisionToS3RevisionDestination({
    required this.bucket,
    this.keyPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucket': bucket, 'keyPattern': ?keyPattern};
  }

  factory EventActionActionExportRevisionToS3RevisionDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventActionActionExportRevisionToS3RevisionDestination(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      keyPattern: (() {
        final guardedValue = map['keyPattern'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
