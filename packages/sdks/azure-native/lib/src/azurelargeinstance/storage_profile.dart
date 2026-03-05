// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk.dart';

/// Specifies the storage settings for the Azure Large Instance disks.
class StorageProfile {
  /// IP Address to connect to storage.
  final pulumi.Input<String>? nfsIpAddress;
  /// Specifies information about the operating system disk used by Azure Large
  /// Instance.
  final pulumi.Input<List<Disk>>? osDisks;

  /// Creates a new [StorageProfile].
  /// [nfsIpAddress] IP Address to connect to storage.
  /// [osDisks] Specifies information about the operating system disk used by Azure Large
  StorageProfile({
    this.nfsIpAddress,
    this.osDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfsIpAddress': ?nfsIpAddress,
      'osDisks': ?pulumi.Input.mapOptionalInputValue<List<Disk>, List<Map<String, dynamic>>>(osDisks, (value) => pulumi.Input.encodeList<Disk, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      nfsIpAddress: (() { final guardedValue = map['nfsIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osDisks: (() { final guardedValue = map['osDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Disk>(guardedValue, (value) => Disk.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

