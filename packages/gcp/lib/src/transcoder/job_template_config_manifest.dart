// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigManifest {
  /// The name of the generated file. The default is `manifest`.
  final String? fileName;

  /// List of user supplied MuxStream.key values that should appear in this manifest.
  final List<String>? muxStreams;

  /// Type of the manifest.
  /// Possible values are: `MANIFEST_TYPE_UNSPECIFIED`, `HLS`, `DASH`.
  final String? type;

  /// Creates a new [JobTemplateConfigManifest].
  /// [fileName] The name of the generated file. The default is `manifest`.
  /// [muxStreams] List of user supplied MuxStream.key values that should appear in this manifest.
  /// [type] Type of the manifest.
  JobTemplateConfigManifest({this.fileName, this.muxStreams, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'muxStreams': ?muxStreams,
      'type': ?type,
    };
  }

  factory JobTemplateConfigManifest.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigManifest(
      fileName: map['fileName'] == null ? null : map['fileName'] as String,
      muxStreams: map['muxStreams'] == null
          ? null
          : (map['muxStreams'] as List).cast<String>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
