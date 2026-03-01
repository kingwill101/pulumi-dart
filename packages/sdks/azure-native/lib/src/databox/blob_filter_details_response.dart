// ignore_for_file: unused_element, unnecessary_cast


/// Filter details to transfer Azure Blobs
class BlobFilterDetailsResponse {
  /// List of full path of the blobs to be transferred.
  final List<String>? blobPathList;
  /// Prefix list of the Azure blobs to be transferred.
  final List<String>? blobPrefixList;
  /// List of blob containers to be transferred.
  final List<String>? containerList;

  /// Creates a new [BlobFilterDetailsResponse].
  /// [blobPathList] List of full path of the blobs to be transferred.
  /// [blobPrefixList] Prefix list of the Azure blobs to be transferred.
  /// [containerList] List of blob containers to be transferred.
  BlobFilterDetailsResponse({
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
      blobPathList: map['blobPathList'] == null ? null : (map['blobPathList'] as List).cast<String>(),
      blobPrefixList: map['blobPrefixList'] == null ? null : (map['blobPrefixList'] as List).cast<String>(),
      containerList: map['containerList'] == null ? null : (map['containerList'] as List).cast<String>(),
    );
  }
}

