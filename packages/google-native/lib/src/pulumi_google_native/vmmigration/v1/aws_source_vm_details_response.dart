// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'aws_disk_details_response.dart';
import 'vm_capabilities_response.dart';

/// Represent the source AWS VM details.
class AwsSourceVmDetailsResponse {
  /// The total size of the disks being migrated in bytes.
  final String committedStorageBytes;

  /// The disks attached to the source VM.
  final List<AwsDiskDetailsResponse> disks;

  /// The firmware type of the source VM.
  final String firmware;

  /// Information about VM capabilities needed for some Compute Engine features.
  final VmCapabilitiesResponse vmCapabilitiesInfo;

  AwsSourceVmDetailsResponse({
    required this.committedStorageBytes,
    required this.disks,
    required this.firmware,
    required this.vmCapabilitiesInfo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['committedStorageBytes'] = committedStorageBytes;
    map['disks'] =
        Input.encodeList<AwsDiskDetailsResponse, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['firmware'] = firmware;
    map['vmCapabilitiesInfo'] = vmCapabilitiesInfo.toMap();
    return map;
  }

  factory AwsSourceVmDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AwsSourceVmDetailsResponse(
      committedStorageBytes: map['committedStorageBytes'] as String,
      disks: Input.decodeList<AwsDiskDetailsResponse>(
          map['disks'],
          (value) => AwsDiskDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      firmware: map['firmware'] as String,
      vmCapabilitiesInfo: VmCapabilitiesResponse.fromMap(
          (map['vmCapabilitiesInfo'] as Map).cast<String, dynamic>()),
    );
  }
}
