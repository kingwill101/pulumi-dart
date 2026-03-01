// ignore_for_file: unused_element, unnecessary_cast

class EventActionActionExportRevisionToS3Encryption {
  /// ARN of the KMS key used for encryption.
  final String? kmsKeyArn;

  /// Type of server-side encryption.
  /// Valid values are `aws:kms` or `aws:s3`.
  final String? type;

  /// Creates a new [EventActionActionExportRevisionToS3Encryption].
  /// [kmsKeyArn] ARN of the KMS key used for encryption.
  /// [type] Type of server-side encryption.
  EventActionActionExportRevisionToS3Encryption({this.kmsKeyArn, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kmsKeyArn': ?kmsKeyArn, 'type': ?type};
  }

  factory EventActionActionExportRevisionToS3Encryption.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventActionActionExportRevisionToS3Encryption(
      kmsKeyArn: map['kmsKeyArn'] == null ? null : map['kmsKeyArn'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
