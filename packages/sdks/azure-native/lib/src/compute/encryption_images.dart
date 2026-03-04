// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_image_encryption.dart';
import 'osdisk_image_encryption.dart';

/// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
class EncryptionImages {
  /// A list of encryption specifications for data disk images.
  final pulumi.Input<List<DataDiskImageEncryption>>? dataDiskImages;

  /// Contains encryption settings for an OS disk image.
  final pulumi.Input<OSDiskImageEncryption>? osDiskImage;

  /// Creates a new [EncryptionImages].
  /// [dataDiskImages] A list of encryption specifications for data disk images.
  /// [osDiskImage] Contains encryption settings for an OS disk image.
  EncryptionImages({this.dataDiskImages, this.osDiskImage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskImages':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataDiskImageEncryption>,
            List<Map<String, dynamic>>
          >(
            dataDiskImages,
            (value) =>
                pulumi.Input.encodeList<
                  DataDiskImageEncryption,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'osDiskImage':
          ?pulumi.Input.mapOptionalInputValue<
            OSDiskImageEncryption,
            Map<String, dynamic>
          >(osDiskImage, (value) => value.toMap()),
    };
  }

  factory EncryptionImages.fromMap(Map<String, dynamic> map) {
    return EncryptionImages(
      dataDiskImages: (() {
        final guardedValue = map['dataDiskImages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataDiskImageEncryption>(
            guardedValue,
            (value) => DataDiskImageEncryption.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      osDiskImage: (() {
        final guardedValue = map['osDiskImage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          OSDiskImageEncryption.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
