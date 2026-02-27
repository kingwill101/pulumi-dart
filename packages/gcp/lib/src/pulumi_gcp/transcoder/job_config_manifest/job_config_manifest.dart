// ignore_for_file: unused_element, unnecessary_cast

class JobConfigManifest {
  /// The name of the generated file. The default is `manifest`.
  final String? fileName;

  /// List of user supplied MuxStream.key values that should appear in this manifest.
  final List<String>? muxStreams;

  /// Type of the manifest.
  /// Possible values are: `MANIFEST_TYPE_UNSPECIFIED`, `HLS`, `DASH`.
  final String? type;

  JobConfigManifest({
    this.fileName,
    this.muxStreams,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileNameValue = fileName;
    if (fileNameValue != null) {
      map['fileName'] = fileNameValue;
    }
    final muxStreamsValue = muxStreams;
    if (muxStreamsValue != null) {
      map['muxStreams'] = muxStreamsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory JobConfigManifest.fromMap(Map<String, dynamic> map) {
    return JobConfigManifest(
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      muxStreams: map['muxStreams'] == null
          ? null
          : (map['muxStreams'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
