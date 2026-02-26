// ignore_for_file: unused_element, unnecessary_cast

/// Source information used to create a Service Config
class SourceInfoResponse {
  /// All files used during config generation.
  final List<Map<String, String>> sourceFiles;

  SourceInfoResponse({
    required this.sourceFiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceFiles'] = sourceFiles;
    return map;
  }

  factory SourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return SourceInfoResponse(
      sourceFiles: (map['sourceFiles'] as List).cast<Map<String, String>>(),
    );
  }
}
