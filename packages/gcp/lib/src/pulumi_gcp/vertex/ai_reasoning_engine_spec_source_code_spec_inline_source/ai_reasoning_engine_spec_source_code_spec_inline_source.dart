// ignore_for_file: unused_element, unnecessary_cast

class AiReasoningEngineSpecSourceCodeSpecInlineSource {
  /// Required. Input only.
  /// The application source code archive, provided as a compressed
  /// tarball (.tar.gz) file. A base64-encoded string.
  final String? sourceArchive;

  AiReasoningEngineSpecSourceCodeSpecInlineSource({
    this.sourceArchive,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceArchiveValue = sourceArchive;
    if (sourceArchiveValue != null) {
      map['sourceArchive'] = sourceArchiveValue;
    }
    return map;
  }

  factory AiReasoningEngineSpecSourceCodeSpecInlineSource.fromMap(
      Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecInlineSource(
      sourceArchive:
          map['sourceArchive'] == null ? null : map['sourceArchive'] as String,
    );
  }
}
