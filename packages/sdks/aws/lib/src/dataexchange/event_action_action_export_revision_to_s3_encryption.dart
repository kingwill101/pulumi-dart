// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventActionActionExportRevisionToS3Encryption {
  /// ARN of the KMS key used for encryption.
  final pulumi.Input<String>? kmsKeyArn;

  /// Type of server-side encryption.
  /// Valid values are `aws:kms` or `aws:s3`.
  final pulumi.Input<String>? type;

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
      kmsKeyArn: (() {
        final guardedValue = map['kmsKeyArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
