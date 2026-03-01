// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_image_encryption.dart';
import 'osdisk_image_encryption.dart';

/// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
class EncryptionImages {
  /// A list of encryption specifications for data disk images.
  final List<DataDiskImageEncryption>? dataDiskImages;
  /// Contains encryption settings for an OS disk image.
  final OSDiskImageEncryption? osDiskImage;

  /// Creates a new [EncryptionImages].
  /// [dataDiskImages] A list of encryption specifications for data disk images.
  /// [osDiskImage] Contains encryption settings for an OS disk image.
  EncryptionImages({
    this.dataDiskImages,
    this.osDiskImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskImages': ?dataDiskImages == null ? null : pulumi.Input.encodeList<DataDiskImageEncryption, Map<String, dynamic>>(dataDiskImages!, (value) => value.toMap()),
      'osDiskImage': ?osDiskImage == null ? null : osDiskImage!.toMap(),
    };
  }

  factory EncryptionImages.fromMap(Map<String, dynamic> map) {
    return EncryptionImages(
      dataDiskImages: map['dataDiskImages'] == null ? null : pulumi.Input.decodeList<DataDiskImageEncryption>(map['dataDiskImages'], (value) => DataDiskImageEncryption.fromMap((value as Map).cast<String, dynamic>())),
      osDiskImage: map['osDiskImage'] == null ? null : OSDiskImageEncryption.fromMap((map['osDiskImage'] as Map).cast<String, dynamic>()),
    );
  }
}

