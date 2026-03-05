// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_response.dart';
import 'image_reference_response.dart';
import 'os_disk_response.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfileResponse {
  /// Specifies the parameters that are used to add a data disk to a virtual machine.
  final pulumi.Input<List<DataDiskResponse>>? dataDisks;
  /// The image reference properties.
  final pulumi.Input<ImageReferenceResponse>? imageReference;
  /// Specifies information about the operating system disk used by the virtual machine.
  final pulumi.Input<OsDiskResponse>? osDisk;

  /// Creates a new [StorageProfileResponse].
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine.
  /// [imageReference] The image reference properties.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine.
  StorageProfileResponse({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageReferenceResponse, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<OsDiskResponse, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDiskResponse>(guardedValue, (value) => DataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsDiskResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

