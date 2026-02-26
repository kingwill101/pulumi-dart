// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a file, used for user inputs.
class FileReferenceResponse {
  /// A path to a file in Google Cloud Storage. Example: gs://build-app-1414623860166/app%40debug-unaligned.apk These paths are expected to be url encoded (percent encoding)
  final String gcsPath;

  FileReferenceResponse({
    required this.gcsPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcsPath'] = gcsPath;
    return map;
  }

  factory FileReferenceResponse.fromMap(Map<String, dynamic> map) {
    return FileReferenceResponse(
      gcsPath: map['gcsPath'] as String,
    );
  }
}
