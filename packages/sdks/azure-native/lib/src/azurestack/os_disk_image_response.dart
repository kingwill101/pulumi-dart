// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// OS disk image.
class OsDiskImageResponse {
  /// OS operating system type.
  final pulumi.Input<String> operatingSystem;
  /// SAS key for source blob.
  final pulumi.Input<String> sourceBlobSasUri;

  /// Creates a new [OsDiskImageResponse].
  /// [operatingSystem] OS operating system type.
  /// [sourceBlobSasUri] SAS key for source blob.
  const OsDiskImageResponse({
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
      operatingSystem: pulumi.Input.fromValue(map['operatingSystem'] as String),
      sourceBlobSasUri: pulumi.Input.fromValue(map['sourceBlobSasUri'] as String),
    );
  }
}
