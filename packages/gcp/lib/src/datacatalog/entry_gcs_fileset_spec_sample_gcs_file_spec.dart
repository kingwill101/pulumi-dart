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
    final map = <String, dynamic>{};
    final filePathValue = filePath;
    if (filePathValue != null) {
      map['filePath'] = filePathValue;
    }
    final sizeBytesValue = sizeBytes;
    if (sizeBytesValue != null) {
      map['sizeBytes'] = sizeBytesValue;
    }
    return map;
  }

  factory EntryGcsFilesetSpecSampleGcsFileSpec.fromMap(
      Map<String, dynamic> map) {
    return EntryGcsFilesetSpecSampleGcsFileSpec(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      sizeBytes: map['sizeBytes'] == null ? null : map['sizeBytes'] as int,
    );
  }
}
