// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AbortIncompleteMultipartUpload
class AbortIncompleteMultipartUpload {
  /// Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  final pulumi.Input<int>? daysAfterInitiation;

  /// Creates a new [AbortIncompleteMultipartUpload].
  /// [daysAfterInitiation] Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  AbortIncompleteMultipartUpload({this.daysAfterInitiation});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'daysAfterInitiation': ?daysAfterInitiation};
  }

  factory AbortIncompleteMultipartUpload.fromMap(Map<String, dynamic> map) {
    return AbortIncompleteMultipartUpload(
      daysAfterInitiation: (() {
        final guardedValue = map['daysAfterInitiation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
