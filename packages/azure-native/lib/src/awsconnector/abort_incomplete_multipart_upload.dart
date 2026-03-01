// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AbortIncompleteMultipartUpload
class AbortIncompleteMultipartUpload {
  /// Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  final int? daysAfterInitiation;

  /// Creates a new [AbortIncompleteMultipartUpload].
  /// [daysAfterInitiation] Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  AbortIncompleteMultipartUpload({
    this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterInitiation': ?daysAfterInitiation,
    };
  }

  factory AbortIncompleteMultipartUpload.fromMap(Map<String, dynamic> map) {
    return AbortIncompleteMultipartUpload(
      daysAfterInitiation: map['daysAfterInitiation'] == null ? null : map['daysAfterInitiation'] as int,
    );
  }
}

