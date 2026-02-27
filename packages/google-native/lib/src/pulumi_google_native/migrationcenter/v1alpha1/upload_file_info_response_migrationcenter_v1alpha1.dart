// ignore_for_file: unused_element, unnecessary_cast

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfoResponseMigrationcenterV1alpha1 {
  /// The headers that were used to sign the URL.
  final Map<String, String> headers;

  /// Upload URI for the file.
  final String signedUri;

  /// Expiration time of the upload URI.
  final String uriExpirationTime;

  UploadFileInfoResponseMigrationcenterV1alpha1({
    required this.headers,
    required this.signedUri,
    required this.uriExpirationTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['headers'] = headers;
    map['signedUri'] = signedUri;
    map['uriExpirationTime'] = uriExpirationTime;
    return map;
  }

  factory UploadFileInfoResponseMigrationcenterV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return UploadFileInfoResponseMigrationcenterV1alpha1(
      headers: (map['headers'] as Map).cast<String, String>(),
      signedUri: map['signedUri'] as String,
      uriExpirationTime: map['uriExpirationTime'] as String,
    );
  }
}
