// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk.dart';
import 'image_reference.dart';
import 'os_disk.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfile {
  /// Specifies the parameters that are used to add a data disk to a virtual machine.
  final List<DataDisk>? dataDisks;
  /// The image reference properties.
  final ImageReference? imageReference;
  /// Specifies information about the operating system disk used by the virtual machine.
  final OsDisk? osDisk;

  /// Creates a new [StorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine.
  /// [imageReference] The image reference properties.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine.
  StorageProfile({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?dataDisks == null ? null : pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(dataDisks!, (value) => value.toMap()),
      'imageReference': ?imageReference == null ? null : imageReference!.toMap(),
      'osDisk': ?osDisk == null ? null : osDisk!.toMap(),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      dataDisks: map['dataDisks'] == null ? null : pulumi.Input.decodeList<DataDisk>(map['dataDisks'], (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>())),
      imageReference: map['imageReference'] == null ? null : ImageReference.fromMap((map['imageReference'] as Map).cast<String, dynamic>()),
      osDisk: map['osDisk'] == null ? null : OsDisk.fromMap((map['osDisk'] as Map).cast<String, dynamic>()),
    );
  }
}

