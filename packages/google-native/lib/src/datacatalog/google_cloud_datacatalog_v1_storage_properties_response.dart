// ignore_for_file: unused_element, unnecessary_cast

/// Details the properties of the underlying storage.
class GoogleCloudDatacatalogV1StoragePropertiesResponse {
  /// Patterns to identify a set of files for this fileset. Examples of a valid `file_pattern`: * `gs://bucket_name/dir/*`: matches all files in the `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in the `bucket_name/dir` and all subdirectories recursively * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
  final List<String> filePattern;

  /// File type in MIME format, for example, `text/plain`.
  final String fileType;

  /// Creates a new [GoogleCloudDatacatalogV1StoragePropertiesResponse].
  /// [filePattern] Patterns to identify a set of files for this fileset. Examples of a valid `file_pattern`: * `gs://bucket_name/dir/*`: matches all files in the `bucket_name/dir` directory * `gs://bucket_name/dir/**`: matches all files in the `bucket_name/dir` and all subdirectories recursively * `gs://bucket_name/file*`: matches files prefixed by `file` in `bucket_name` * `gs://bucket_name/??.txt`: matches files with two characters followed by `.txt` in `bucket_name` * `gs://bucket_name/[aeiou].txt`: matches files that contain a single vowel character followed by `.txt` in `bucket_name` * `gs://bucket_name/[a-m].txt`: matches files that contain `a`, `b`, ... or `m` followed by `.txt` in `bucket_name` * `gs://bucket_name/a/*/b`: matches all files in `bucket_name` that match the `a/*/b` pattern, such as `a/c/b`, `a/d/b` * `gs://another_bucket/a.txt`: matches `gs://another_bucket/a.txt`
  /// [fileType] File type in MIME format, for example, `text/plain`.
  GoogleCloudDatacatalogV1StoragePropertiesResponse({
    required this.filePattern,
    required this.fileType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePattern'] = filePattern;
    map['fileType'] = fileType;
    return map;
  }

  factory GoogleCloudDatacatalogV1StoragePropertiesResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1StoragePropertiesResponse(
      filePattern: (map['filePattern'] as List).cast<String>(),
      fileType: map['fileType'] as String,
    );
  }
}
