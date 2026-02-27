// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'azure_disk_details_response2.dart';
import 'vm_capabilities_response2.dart';

/// Represent the source Azure VM details.
class AzureSourceVmDetailsResponse2 {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<AzureDiskDetailsResponse2> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse2 vmCapabilitiesInfo;

  AzureSourceVmDetailsResponse2({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] =
        Input.encodeList<AzureDiskDetailsResponse2, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory AzureSourceVmDetailsResponse2.fromMap(Map<String, dynamic> map) {
    return AzureSourceVmDetailsResponse2(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: Input.decodeList<AzureDiskDetailsResponse2>(
          map['disks'],
          (value) => AzureDiskDetailsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse2.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
