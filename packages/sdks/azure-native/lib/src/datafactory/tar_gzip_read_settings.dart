// ignore_for_file: unused_element, unnecessary_cast


/// The TarGZip compression read settings.
class TarGZipReadSettings {
  /// Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  final dynamic preserveCompressionFileNameAsFolder;
  /// The Compression setting type.
  /// Expected value is 'TarGZipReadSettings'.
  final String type;

  /// Creates a new [TarGZipReadSettings].
  /// [preserveCompressionFileNameAsFolder] Preserve the compression file name as folder path. Type: boolean (or Expression with resultType boolean).
  /// [type] The Compression setting type.
  TarGZipReadSettings({
    this.preserveCompressionFileNameAsFolder,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'preserveCompressionFileNameAsFolder': ?preserveCompressionFileNameAsFolder,
      'type': type,
    };
  }

  factory TarGZipReadSettings.fromMap(Map<String, dynamic> map) {
    return TarGZipReadSettings(
      preserveCompressionFileNameAsFolder: map['preserveCompressionFileNameAsFolder'] == null ? null : map['preserveCompressionFileNameAsFolder'],
      type: map['type'] as String,
    );
  }
}

