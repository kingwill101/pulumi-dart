// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share_response.dart';

/// Storage profile for storage related settings of a container group profile.
class StorageProfileResponse {
  final List<FileShareResponse>? fileShares;

  /// Creates a new [StorageProfileResponse].
  /// [fileShares] Optional.
  StorageProfileResponse({
    this.fileShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShares': ?fileShares == null ? null : pulumi.Input.encodeList<FileShareResponse, Map<String, dynamic>>(fileShares!, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      fileShares: map['fileShares'] == null ? null : pulumi.Input.decodeList<FileShareResponse>(map['fileShares'], (value) => FileShareResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

