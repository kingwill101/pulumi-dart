// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk.dart';
import 'image_reference.dart';
import 'os_disk.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfile {
  /// Specifies the parameters that are used to add a data disk to a virtual machine.
  final pulumi.Input<List<DataDisk>>? dataDisks;
  /// The image reference properties.
  final pulumi.Input<ImageReference>? imageReference;
  /// Specifies information about the operating system disk used by the virtual machine.
  final pulumi.Input<OsDisk>? osDisk;

  /// Creates a new [StorageProfile].
  /// [dataDisks] Specifies the parameters that are used to add a data disk to a virtual machine.
  /// [imageReference] The image reference properties.
  /// [osDisk] Specifies information about the operating system disk used by the virtual machine.
  const StorageProfile({
    this.dataDisks,
    this.imageReference,
    this.osDisk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDisks': ?pulumi.Input.mapOptionalInputValue<List<DataDisk>, List<Map<String, dynamic>>>(dataDisks, (value) => pulumi.Input.encodeList<DataDisk, Map<String, dynamic>>(value, (value) => value.toMap())),
      'imageReference': ?pulumi.Input.mapOptionalInputValue<ImageReference, Map<String, dynamic>>(imageReference, (value) => value.toMap()),
      'osDisk': ?pulumi.Input.mapOptionalInputValue<OsDisk, Map<String, dynamic>>(osDisk, (value) => value.toMap()),
    };
  }

  factory StorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageProfile(
      dataDisks: (() { final guardedValue = map['dataDisks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataDisk>(guardedValue, (value) => DataDisk.fromMap((value as Map).cast<String, dynamic>()))); })(),
      imageReference: (() { final guardedValue = map['imageReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      osDisk: (() { final guardedValue = map['osDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OsDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

