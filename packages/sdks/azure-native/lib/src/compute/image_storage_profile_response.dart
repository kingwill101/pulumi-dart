// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_data_disk_response.dart';
import 'image_osdisk_response.dart';

/// Describes a storage profile.
class ImageStorageProfileResponse {
  /// Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<List<ImageDataDiskResponse>>? dataDisks;
  /// Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final pulumi.Input<ImageOSDiskResponse>? osDisk;
  /// Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS).
  final pulumi.Input<bool>? zoneResilient;

  /// Creates a new [ImageStorageProfileResponse].
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [zoneResilient] Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS).
  ImageStorageProfileResponse({
    this.dataDisks,
    this.osDisk,
    this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<ImageDataDiskResponse>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<ImageDataDiskResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<ImageOSDiskResponse, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
      'zoneResilient': ?zoneResilient,
    };
  }

  factory ImageStorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return ImageStorageProfileResponse(
      dataDisks: map['dataDisks'] == null ? null : (pulumi.Input.decodeList<ImageDataDiskResponse>(map['dataDisks'], (value) => ImageDataDiskResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDisk: map['osDisk'] == null ? null : (ImageOSDiskResponse.fromMap((map['osDisk'] as Map).cast<String, dynamic>())).input(),
      zoneResilient: map['zoneResilient'] == null ? null : (map['zoneResilient'] as bool).input(),
    );
  }
}

