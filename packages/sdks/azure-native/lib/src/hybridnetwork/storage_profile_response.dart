// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_response.dart';
import 'image_reference_response.dart';
import 'os_disk_response.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfileResponse {
  /// Specifies the parameters that are used to add a data disk to a virtual machine.
  final List<DataDiskResponse>? dataDisks;
  /// The image reference properties.
  final ImageReferenceResponse? imageReference;
  /// Specifies information about the operating system disk used by the virtual machine.
  final OsDiskResponse? osDisk;

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
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<DataDiskResponse, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<DataDiskResponse>(map['dataDisks'], (value) => DataDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: map['imageReference'] == null ? null : ImageReferenceResponse.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : OsDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

