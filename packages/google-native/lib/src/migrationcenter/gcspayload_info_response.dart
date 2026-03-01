// ignore_for_file: unused_element, unnecessary_cast

/// A resource that represents a payload hosted on Google Cloud Storage.
class GCSPayloadInfoResponse {
  /// The import job format.
  final String format;

  /// The payload path in Google Cloud Storage.
  final String path;

  /// Creates a new [GCSPayloadInfoResponse].
  /// [format] The import job format.
  /// [path] The payload path in Google Cloud Storage.
  GCSPayloadInfoResponse({required this.format, required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'format': format, 'path': path};
  }

  factory GCSPayloadInfoResponse.fromMap(Map<String, dynamic> map) {
    return GCSPayloadInfoResponse(
      format: map['format'] as String,
      path: map['path'] as String,
    );
  }
}
