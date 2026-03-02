// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data disk image.
class DataDiskImageResponse {
  /// The LUN.
  final pulumi.Input<int> lun;
  /// SAS key for source blob.
  final pulumi.Input<String> sourceBlobSasUri;

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
      lun: (map['lun'] as int).input(),
      sourceBlobSasUri: (map['sourceBlobSasUri'] as String).input(),
    );
  }
}

