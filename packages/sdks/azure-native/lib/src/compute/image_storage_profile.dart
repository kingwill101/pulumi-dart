// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_data_disk.dart';
import 'image_osdisk.dart';

/// Describes a storage profile.
class ImageStorageProfile {
  /// Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final List<ImageDataDisk>? dataDisks;
  /// Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  final ImageOSDisk? osDisk;
  /// Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS).
  final bool? zoneResilient;

  /// Creates a new [ImageStorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine. <br><br> For more information about disks, see [About disks and VHDs for Azure virtual machines](https://docs.microsoft.com/azure/virtual-machines/managed-disks-overview).
  /// [zoneResilient] Specifies whether an image is zone resilient or not. Default is false. Zone resilient images can be created only in regions that provide Zone Redundant Storage (ZRS).
  ImageStorageProfile({
    this.dataDisks,
    this.osDisk,
    this.zoneResilient,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<ImageDataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
      'zoneResilient': ?zoneResilient,
    };
  }

  factory ImageStorageProfile.fromMap(Map<String, dynamic> map) {
    return ImageStorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<ImageDataDisk>(map['dataDisks'], (value) => ImageDataDisk.fromMap((value as Map).cast<String, dynamic>())),
      osDisk: map['osDisk'] == null ? null : ImageOSDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
      zoneResilient: map['zoneResilient'] == null ? null : map['zoneResilient'] as bool,
    );
  }
}

