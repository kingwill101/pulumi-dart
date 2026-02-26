// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a file, used for user inputs.
class FileReference {
  /// A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
  final String? gcsPath;

  FileReference({
    this.gcsPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcsPathValue = gcsPath;
    if (gcsPathValue != null) {
      map['gcsPath'] = gcsPathValue;
    }
    return map;
  }

  factory FileReference.fromMap(Map<String, dynamic> map) {
    return FileReference(
      gcsPath: map['gcsPath'] == null ? null : map['gcsPath'] as String,
    );
  }
}
