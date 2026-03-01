// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';

/// Specifies the storage settings for the Azure Bare Metal instance disks.
class StorageProfileResponse {
  /// IP Address to connect to storage.
  final String? nfsIpAddress;
  /// Specifies information about the operating system disk used by bare metal instance.
  final List<DiskResponse>? osDisks;

  /// Creates a new [StorageProfileResponse].
  /// [nfsIpAddress] IP Address to connect to storage.
  /// [osDisks] Specifies information about the operating system disk used by bare metal instance.
  StorageProfileResponse({
    this.nfsIpAddress,
    this.osDisks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfsIpAddress': ?nfsIpAddress,
      'osDisks': ?osDisks == null ? null : pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(osDisks!, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      nfsIpAddress: map['nfsIpAddress'] == null ? null : map['nfsIpAddress'] as String,
      osDisks: map['osDisks'] == null ? null : pulumi.Input.decodeList<DiskResponse>(map['osDisks'], (value) => DiskResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

