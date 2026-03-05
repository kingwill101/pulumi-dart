// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A property containing information about the blobs to be exported for an export job. This property is required for export jobs, but must not be specified for import jobs.
class ExportResponse {
  /// The relative URI to the block blob that contains the list of blob paths or blob path prefixes as defined above, beginning with the container name. If the blob is in root container, the URI must begin with $root.
  final pulumi.Input<String>? blobListBlobPath;
  /// A collection of blob-path strings.
  final pulumi.Input<List<String>>? blobPath;
  /// A collection of blob-prefix strings.
  final pulumi.Input<List<String>>? blobPathPrefix;

  /// Creates a new [ExportResponse].
  /// [blobListBlobPath] The relative URI to the block blob that contains the list of blob paths or blob path prefixes as defined above, beginning with the container name. If the blob is in root container, the URI must begin with $root.
  /// [blobPath] A collection of blob-path strings.
  /// [blobPathPrefix] A collection of blob-prefix strings.
  ExportResponse({
    this.blobListBlobPath,
    this.blobPath,
    this.blobPathPrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobListBlobPath': ?blobListBlobPath,
      'blobPath': ?blobPath,
      'blobPathPrefix': ?blobPathPrefix,
    };
  }

  factory ExportResponse.fromMap(Map<String, dynamic> map) {
    return ExportResponse(
      blobListBlobPath: (() { final guardedValue = map['blobListBlobPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      blobPath: (() { final guardedValue = map['blobPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blobPathPrefix: (() { final guardedValue = map['blobPathPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

