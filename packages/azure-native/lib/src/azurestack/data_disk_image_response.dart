// ignore_for_file: unused_element, unnecessary_cast


/// Data disk image.
class DataDiskImageResponse {
  /// The LUN.
  final int lun;
  /// SAS key for source blob.
  final String sourceBlobSasUri;

  /// Creates a new [DataDiskImageResponse].
  /// [lun] The LUN.
  /// [sourceBlobSasUri] SAS key for source blob.
  DataDiskImageResponse({
    required this.lun,
    required this.sourceBlobSasUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lun': lun,
      'sourceBlobSasUri': sourceBlobSasUri,
    };
  }

  factory DataDiskImageResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskImageResponse(
      lun: map['lun'] as int,
      sourceBlobSasUri: map['sourceBlobSasUri'] as String,
    );
  }
}

