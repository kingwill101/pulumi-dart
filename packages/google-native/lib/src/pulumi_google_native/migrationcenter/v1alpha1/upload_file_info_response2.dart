// ignore_for_file: unused_element, unnecessary_cast

/// A resource that contains a URI to which a data file can be uploaded.
class UploadFileInfoResponse2 {
  /// The headers that were used to sign the URL.
  final Map<String, String> headers;

  /// Upload URI for the file.
  final String signedUri;

  /// Expiration time of the upload URI.
  final String uriExpirationTime;

  UploadFileInfoResponse2({
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

  factory UploadFileInfoResponse2.fromMap(Map<String, dynamic> map) {
    return UploadFileInfoResponse2(
      headers: (map['headers'] as Map).cast<String, String>(),
      signedUri: map['signedUri'] as String,
      uriExpirationTime: map['uriExpirationTime'] as String,
    );
  }
}
