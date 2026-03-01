// ignore_for_file: unused_element, unnecessary_cast


/// A property containing information about the blobs to be exported for an export job. This property is required for export jobs, but must not be specified for import jobs.
class ExportResponse {
  /// The relative URI to the block blob that contains the list of blob paths or blob path prefixes as defined above, beginning with the container name. If the blob is in root container, the URI must begin with $root.
  final String? blobListBlobPath;
  /// A collection of blob-path strings.
  final List<String>? blobPath;
  /// A collection of blob-prefix strings.
  final List<String>? blobPathPrefix;

  /// Creates a new [ExportResponse].
  /// [blobListBlobPath] The relative URI to the block blob that contains the list of blob paths or blob path prefixes as defined above, beginning with the container name. If the blob is in root container, the URI must begin with $root.
  /// [blobPath] A collection of blob-path strings.
  /// [blobPathPrefix] A collection of blob-prefix strings.
  ExportResponse({
    this.blobListBlobPath,
    this.blobPath,
    this.blobPathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobListBlobPath': ?blobListBlobPath,
      'blobPath': ?blobPath,
      'blobPathPrefix': ?blobPathPrefix,
    };
  }

  factory ExportResponse.fromMap(Map<String, dynamic> map) {
    return ExportResponse(
      blobListBlobPath: map['blobListBlobPath'] == null ? null : map['blobListBlobPath'] as String,
      blobPath: map['blobPath'] == null ? null : (map['blobPath'] as List).cast<String>(),
      blobPathPrefix: map['blobPathPrefix'] == null ? null : (map['blobPathPrefix'] as List).cast<String>(),
    );
  }
}

