// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'caching_types.dart';
import 'disk_encryption_set_parameters.dart';
import 'operating_system_state_types.dart';
import 'operating_system_types.dart';
import 'sub_resource.dart';

/// Describes an Operating System disk.
class ImageOSDisk {
  /// The Virtual Hard Disk.
  final pulumi.Input<String>? blobUri;

  /// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  final pulumi.Input<CachingTypes>? caching;

  /// Specifies the customer managed disk encryption set resource id for the managed image disk.
  final pulumi.Input<DiskEncryptionSetParameters>? diskEncryptionSet;

  /// Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  final pulumi.Input<int>? diskSizeGB;

  /// The managedDisk.
  final pulumi.Input<SubResource>? managedDisk;

  /// The OS State. For managed images, use Generalized.
  final pulumi.Input<OperatingSystemStateTypes> osState;

  /// This property allows you to specify the type of the OS that is included in the disk if creating a VM from a custom image. Possible values are: **Windows,** **Linux.**
  final pulumi.Input<OperatingSystemTypes> osType;

  /// The snapshot.
  final pulumi.Input<SubResource>? snapshot;

  /// Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [ImageOSDisk].
  /// [blobUri] The Virtual Hard Disk.
  /// [caching] Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The default values are: **None for Standard storage. ReadOnly for Premium storage.**
  /// [diskEncryptionSet] Specifies the customer managed disk encryption set resource id for the managed image disk.
  /// [diskSizeGB] Specifies the size of empty data disks in gigabytes. This element can be used to overwrite the name of the disk in a virtual machine image. This value cannot be larger than 1023 GB.
  /// [managedDisk] The managedDisk.
  /// [osState] The OS State. For managed images, use Generalized.
  /// [osType] This property allows you to specify the type of the OS that is included in the disk if creating a VM from a custom image. Possible values are: **Windows,** **Linux.**
  /// [snapshot] The snapshot.
  /// [storageAccountType] Specifies the storage account type for the managed disk. NOTE: UltraSSD_LRS can only be used with data disks, it cannot be used with OS Disk.
  ImageOSDisk({
    this.blobUri,
    this.caching,
    this.diskEncryptionSet,
    this.diskSizeGB,
    this.managedDisk,
    required this.osState,
    required this.osType,
    this.snapshot,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobUri': ?blobUri,
      'caching': ?pulumi.Input.mapOptionalInputValue<CachingTypes, String>(
        caching,
        (value) => value.wireValue,
      ),
      'diskEncryptionSet':
          ?pulumi.Input.mapOptionalInputValue<
            DiskEncryptionSetParameters,
            Map<String, dynamic>
          >(diskEncryptionSet, (value) => value.toMap()),
      'diskSizeGB': ?diskSizeGB,
      'managedDisk':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(managedDisk, (value) => value.toMap()),
      'osState': pulumi.Input.mapInputValue<OperatingSystemStateTypes, String>(
        osState,
        (value) => value.wireValue,
      ),
      'osType': pulumi.Input.mapInputValue<OperatingSystemTypes, String>(
        osType,
        (value) => value.wireValue,
      ),
      'snapshot':
          ?pulumi.Input.mapOptionalInputValue<
            SubResource,
            Map<String, dynamic>
          >(snapshot, (value) => value.toMap()),
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ImageOSDisk.fromMap(Map<String, dynamic> map) {
    return ImageOSDisk(
      blobUri: (() {
        final guardedValue = map['blobUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caching: (() {
        final guardedValue = map['caching'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CachingTypes.fromValue(guardedValue as String),
        );
      })(),
      diskEncryptionSet: (() {
        final guardedValue = map['diskEncryptionSet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiskEncryptionSetParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      diskSizeGB: (() {
        final guardedValue = map['diskSizeGB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      managedDisk: (() {
        final guardedValue = map['managedDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      osState: pulumi.Input.fromValue(
        OperatingSystemStateTypes.fromValue(map['osState']! as String),
      ),
      osType: pulumi.Input.fromValue(
        OperatingSystemTypes.fromValue(map['osType']! as String),
      ),
      snapshot: (() {
        final guardedValue = map['snapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SubResource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      storageAccountType: (() {
        final guardedValue = map['storageAccountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
