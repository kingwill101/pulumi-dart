// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a file.
class FileReferenceResponse2 {
  /// The URI of a file stored in Google Cloud Storage. For example: http://storage.googleapis.com/mybucket/path/to/test.xml or in gsutil format: gs://mybucket/path/to/test.xml with version-specific info, gs://mybucket/path/to/test.xml#1360383693690000 An INVALID_ARGUMENT error will be returned if the URI format is not supported. - In response: always set - In create/update request: always set
  final String fileUri;

  FileReferenceResponse2({
    required this.fileUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileUri'] = fileUri;
    return map;
  }

  factory FileReferenceResponse2.fromMap(Map<String, dynamic> map) {
    return FileReferenceResponse2(
      fileUri: map['fileUri'] as String,
    );
  }
}
