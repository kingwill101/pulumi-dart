// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_disk_image_encryption_response.dart';
import 'osdisk_image_encryption_response.dart';

/// Optional. Allows users to provide customer managed keys for encrypting the OS and data disks in the gallery artifact.
class EncryptionImagesResponse {
  /// A list of encryption specifications for data disk images.
  final pulumi.Input<List<DataDiskImageEncryptionResponse>>? dataDiskImages;
  /// Contains encryption settings for an OS disk image.
  final pulumi.Input<OSDiskImageEncryptionResponse>? osDiskImage;

  /// Creates a new [EncryptionImagesResponse].
  /// [dataDiskImages] A list of encryption specifications for data disk images.
  /// [osDiskImage] Contains encryption settings for an OS disk image.
  EncryptionImagesResponse({
    this.dataDiskImages,
    this.osDiskImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataDiskImages': ?pulumi.Input.mapOptionalInputValue<List<DataDiskImageEncryptionResponse>, List<Map<String, dynamic>>>(dataDiskImages, (value) => pulumi.Input.encodeList<DataDiskImageEncryptionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'osDiskImage': ?pulumi.Input.mapOptionalInputValue<OSDiskImageEncryptionResponse, Map<String, dynamic>>(osDiskImage, (value) => value.toMap()),
    };
  }

  factory EncryptionImagesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionImagesResponse(
      dataDiskImages: map['dataDiskImages'] == null ? null : (pulumi.Input.decodeList<DataDiskImageEncryptionResponse>(map['dataDiskImages']!, (value) => DataDiskImageEncryptionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      osDiskImage: map['osDiskImage'] == null ? null : (OSDiskImageEncryptionResponse.fromMap((map['osDiskImage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

