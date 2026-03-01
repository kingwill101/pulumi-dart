// ignore_for_file: unused_element, unnecessary_cast


/// The ZipDeflate compression read settings.
class ZipDeflateReadSettingsResponse {
  /// Preserve the zip file name as folder path. Type: boolean (or Expression with resultType boolean).
  final dynamic preserveZipFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'ZipDeflateReadSettings'.
  final String type;

  /// Creates a new [ZipDeflateReadSettingsResponse].
  /// [preserveZipFileNameAsFolder] Preserve the zip file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  ZipDeflateReadSettingsResponse({
    this.preserveZipFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveZipFileNameAsFolder': ?preserveZipFileNameAsFolder,
      'type': type,
    };
  }

  factory ZipDeflateReadSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ZipDeflateReadSettingsResponse(
      preserveZipFileNameAsFolder: map['preserveZipFileNameAsFolder'] == null ? null : map['preserveZipFileNameAsFolder'],
      type: map['type'] as String,
    );
  }
}

