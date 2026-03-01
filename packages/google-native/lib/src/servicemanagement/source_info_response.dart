// ignore_for_file: unused_element, unnecessary_cast

/// Source information used to create a Service Config
class SourceInfoResponse {
  /// All files used during config generation.
  final List<Map<String, String>> sourceFiles;

  /// Creates a new [SourceInfoResponse].
  /// [sourceFiles] All files used during config generation.
  SourceInfoResponse({required this.sourceFiles});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sourceFiles': sourceFiles};
  }

  factory SourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return SourceInfoResponse(
      sourceFiles: (map['sourceFiles'] as List).cast<Map<String, String>>(),
    );
  }
}
