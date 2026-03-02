// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Blob container storage information.
class BlobShareResponse {
  /// SAS URI of Azure Storage Account Container.
  final pulumi.Input<String>? sasUri;

  /// Creates a new [BlobShareResponse].
  /// [sasUri] SAS URI of Azure Storage Account Container.
  BlobShareResponse({
    this.sasUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasUri': ?sasUri,
    };
  }

  factory BlobShareResponse.fromMap(Map<String, dynamic> map) {
    return BlobShareResponse(
      sasUri: map['sasUri'] == null ? null : (map['sasUri']! as String).input(),
    );
  }
}

