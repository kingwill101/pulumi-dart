// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter details to transfer Azure Blobs
class BlobFilterDetailsResponse {
  /// List of full path of the blobs to be transferred.
  final pulumi.Input<List<String>?>? blobPathList;
  /// Prefix list of the Azure blobs to be transferred.
  final pulumi.Input<List<String>?>? blobPrefixList;
  /// List of blob containers to be transferred.
  final pulumi.Input<List<String>?>? containerList;

  /// Creates a new [BlobFilterDetailsResponse].
  /// [blobPathList] List of full path of the blobs to be transferred.
  /// [blobPrefixList] Prefix list of the Azure blobs to be transferred.
  /// [containerList] List of blob containers to be transferred.
  const BlobFilterDetailsResponse({
    this.blobPathList,
    this.blobPrefixList,
    this.containerList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobPathList': ?blobPathList,
      'blobPrefixList': ?blobPrefixList,
      'containerList': ?containerList,
    };
  }

  factory BlobFilterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return BlobFilterDetailsResponse(
      blobPathList: (() { final guardedValue = map['blobPathList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      blobPrefixList: (() { final guardedValue = map['blobPrefixList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerList: (() { final guardedValue = map['containerList']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
