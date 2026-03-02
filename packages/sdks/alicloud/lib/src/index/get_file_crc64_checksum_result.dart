// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFileCrc64Checksum.
class GetFileCrc64ChecksumResult {
  /// the file checksum of crc64.
  final String checksum;
  final String filename;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? outputFile;

  /// Creates a new [GetFileCrc64ChecksumResult].
  /// [checksum] the file checksum of crc64.
  /// [filename] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [outputFile] Optional.
  GetFileCrc64ChecksumResult({
    required this.checksum,
    required this.filename,
    required this.id,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checksum': checksum,
      'filename': filename,
      'id': id,
      'outputFile': ?outputFile,
    };
  }

  factory GetFileCrc64ChecksumResult.fromMap(Map<String, dynamic> map) {
    return GetFileCrc64ChecksumResult(
      checksum: map['checksum'] as String,
      filename: map['filename'] as String,
      id: map['id'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

