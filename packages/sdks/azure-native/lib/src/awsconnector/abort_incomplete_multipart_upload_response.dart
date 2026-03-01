// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AbortIncompleteMultipartUpload
class AbortIncompleteMultipartUploadResponse {
  /// Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  final int? daysAfterInitiation;

  /// Creates a new [AbortIncompleteMultipartUploadResponse].
  /// [daysAfterInitiation] Specifies the number of days after which Amazon S3 stops an incomplete multipart upload.
  AbortIncompleteMultipartUploadResponse({
    this.daysAfterInitiation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'daysAfterInitiation': ?daysAfterInitiation,
    };
  }

  factory AbortIncompleteMultipartUploadResponse.fromMap(Map<String, dynamic> map) {
    return AbortIncompleteMultipartUploadResponse(
      daysAfterInitiation: map['daysAfterInitiation'] == null ? null : map['daysAfterInitiation'] as int,
    );
  }
}

