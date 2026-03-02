// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Filter details to transfer Azure Blobs
class BlobFilterDetails {
  /// List of full path of the blobs to be transferred.
  final pulumi.Input<List<String>>? blobPathList;
  /// Prefix list of the Azure blobs to be transferred.
  final pulumi.Input<List<String>>? blobPrefixList;
  /// List of blob containers to be transferred.
  final pulumi.Input<List<String>>? containerList;

  /// Creates a new [BlobFilterDetails].
  /// [blobPathList] List of full path of the blobs to be transferred.
  /// [blobPrefixList] Prefix list of the Azure blobs to be transferred.
  /// [containerList] List of blob containers to be transferred.
  BlobFilterDetails({
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

  factory BlobFilterDetails.fromMap(Map<String, dynamic> map) {
    return BlobFilterDetails(
      blobPathList: map['blobPathList'] == null ? null : ((map['blobPathList']! as List).cast<String>()).input(),
      blobPrefixList: map['blobPrefixList'] == null ? null : ((map['blobPrefixList']! as List).cast<String>()).input(),
      containerList: map['containerList'] == null ? null : ((map['containerList']! as List).cast<String>()).input(),
    );
  }
}

