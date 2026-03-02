// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Blob container storage information.
class BlobShare {
  /// SAS URI of Azure Storage Account Container.
  final pulumi.Input<String>? sasUri;

  /// Creates a new [BlobShare].
  /// [sasUri] SAS URI of Azure Storage Account Container.
  BlobShare({
    this.sasUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasUri': ?sasUri,
    };
  }

  factory BlobShare.fromMap(Map<String, dynamic> map) {
    return BlobShare(
      sasUri: map['sasUri'] == null ? null : (map['sasUri'] as String).input(),
    );
  }
}

