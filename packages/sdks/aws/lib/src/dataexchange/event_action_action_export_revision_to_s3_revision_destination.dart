// ignore_for_file: unused_element, unnecessary_cast


class EventActionActionExportRevisionToS3RevisionDestination {
  /// The S3 bucket where the revision will be exported.
  final String bucket;
  /// Pattern for naming revisions in the S3 bucket.
  /// Defaults to `${Revision.CreatedAt}/${Asset.Name}`.
  final String? keyPattern;

  /// Creates a new [EventActionActionExportRevisionToS3RevisionDestination].
  /// [bucket] The S3 bucket where the revision will be exported.
  /// [keyPattern] Pattern for naming revisions in the S3 bucket.
  EventActionActionExportRevisionToS3RevisionDestination({
    required this.bucket,
    this.keyPattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'keyPattern': ?keyPattern,
    };
  }

  factory EventActionActionExportRevisionToS3RevisionDestination.fromMap(Map<String, dynamic> map) {
    return EventActionActionExportRevisionToS3RevisionDestination(
      bucket: map['bucket'] as String,
      keyPattern: map['keyPattern'] == null ? null : map['keyPattern'] as String,
    );
  }
}

