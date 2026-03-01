// ignore_for_file: unused_element, unnecessary_cast


/// OS disk image.
class OsDiskImageResponse {
  /// OS operating system type.
  final String operatingSystem;
  /// SAS key for source blob.
  final String sourceBlobSasUri;

  /// Creates a new [OsDiskImageResponse].
  /// [operatingSystem] OS operating system type.
  /// [sourceBlobSasUri] SAS key for source blob.
  OsDiskImageResponse({
    required this.operatingSystem,
    required this.sourceBlobSasUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystem': operatingSystem,
      'sourceBlobSasUri': sourceBlobSasUri,
    };
  }

  factory OsDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return OsDiskImageResponse(
      operatingSystem: map['operatingSystem'] as String,
      sourceBlobSasUri: map['sourceBlobSasUri'] as String,
    );
  }
}

