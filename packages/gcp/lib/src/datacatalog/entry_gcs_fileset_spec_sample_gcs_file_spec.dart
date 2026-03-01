// ignore_for_file: unused_element, unnecessary_cast


class EntryGcsFilesetSpecSampleGcsFileSpec {
  /// The full file path
  final String? filePath;
  /// The size of the file, in bytes.
  final int? sizeBytes;

  /// Creates a new [EntryGcsFilesetSpecSampleGcsFileSpec].
  /// [filePath] The full file path
  /// [sizeBytes] The size of the file, in bytes.
  EntryGcsFilesetSpecSampleGcsFileSpec({
    this.filePath,
    this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'sizeBytes': ?sizeBytes,
    };
  }

  factory EntryGcsFilesetSpecSampleGcsFileSpec.fromMap(Map<String, dynamic> map) {
    return EntryGcsFilesetSpecSampleGcsFileSpec(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as int,
    );
  }
}

