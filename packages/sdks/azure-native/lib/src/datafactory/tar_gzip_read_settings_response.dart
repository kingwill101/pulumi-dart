// ignore_for_file: unused_element, unnecessary_cast


/// The TarGZip compression read settings.
class TarGZipReadSettingsResponse {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final dynamic preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarGZipReadSettings'.
  final String type;

  /// Creates a new [TarGZipReadSettingsResponse].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  TarGZipReadSettingsResponse({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarGZipReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TarGZipReadSettingsResponse(
      preserveCompressionFileNameAsFolder: map['preserveCompressionFileNameAsFolder'] == null ? null : map['preserveCompressionFileNameAsFolder'],
      type: map['type'] as String,
    );
  }
}

