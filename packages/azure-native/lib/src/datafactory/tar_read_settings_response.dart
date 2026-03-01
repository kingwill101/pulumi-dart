// ignore_for_file: unused_element, unnecessary_cast


/// The Tar compression read settings.
class TarReadSettingsResponse {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final dynamic preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarReadSettings'.
  final String type;

  /// Creates a new [TarReadSettingsResponse].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  TarReadSettingsResponse({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TarReadSettingsResponse(
      preserveCompressionFileNameAsFolder: map['preserveCompressionFileNameAsFolder'] == null ? null : map['preserveCompressionFileNameAsFolder'],
      type: map['type'] as String,
    );
  }
}

