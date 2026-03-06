// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_share.dart';

/// Storage profile for storage related settings of a container group profile.
class StorageProfile {
  final pulumi.Input<List<FileShare>>? fileShares;

  /// Creates a new [StorageProfile].
  /// [fileShares] Optional.
  const StorageProfile({
    this.fileShares,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileShares': ?pulumi.Input.mapOptionalInputValue<List<FileShare>, List<Map<String, dynamic>>>(fileShares, (value) => pulumi.Input.encodeList<FileShare, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      fileShares: (() { final guardedValue = map['fileShares']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FileShare>(guardedValue, (value) => FileShare.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

