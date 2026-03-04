// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_response.dart';

/// Specifies the storage settings for the Azure Bare Metal instance disks.
class StorageProfileResponse {
  /// IP Address to connect to storage.
  final pulumi.Input<String>? nfsIpAddress;

  /// Specifies information about the operating system disk used by bare metal instance.
  final pulumi.Input<List<DiskResponse>>? osDisks;

  /// Creates a new [StorageProfileResponse].
  /// [nfsIpAddress] IP Address to connect to storage.
  /// [osDisks] Specifies information about the operating system disk used by bare metal instance.
  StorageProfileResponse({this.nfsIpAddress, this.osDisks});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nfsIpAddress': ?nfsIpAddress,
      'osDisks':
          ?pulumi.Input.mapOptionalInputValue<
            List<DiskResponse>,
            List<Map<String, dynamic>>
          >(
            osDisks,
            (value) =>
                pulumi.Input.encodeList<DiskResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      nfsIpAddress: (() {
        final guardedValue = map['nfsIpAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osDisks: (() {
        final guardedValue = map['osDisks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DiskResponse>(
            guardedValue,
            (value) =>
                DiskResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
