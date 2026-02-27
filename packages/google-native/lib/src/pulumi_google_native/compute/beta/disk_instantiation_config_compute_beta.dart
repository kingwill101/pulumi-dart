// ignore_for_file: unused_element, unnecessary_cast

import 'disk_instantiation_config_instantiate_from_compute_beta.dart';

/// A specification of the desired way to instantiate a disk in the instance template when its created from a source instance.
class DiskInstantiationConfigComputeBeta {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool? autoDelete;

  /// The custom source image to be used to restore this disk when instantiating this instance template.
  final String? customImage;

  /// Specifies the device name of the disk to which the configurations apply to.
  final String? deviceName;

  /// Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  final DiskInstantiationConfigInstantiateFromComputeBeta? instantiateFrom;

  DiskInstantiationConfigComputeBeta({
    this.autoDelete,
    this.customImage,
    this.deviceName,
    this.instantiateFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoDeleteValue = autoDelete;
    if (autoDeleteValue != null) {
      map['autoDelete'] = autoDeleteValue;
    }
    final customImageValue = customImage;
    if (customImageValue != null) {
      map['customImage'] = customImageValue;
    }
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final instantiateFromValue = instantiateFrom;
    if (instantiateFromValue != null) {
      map['instantiateFrom'] = instantiateFromValue.value;
    }
    return map;
  }

  factory DiskInstantiationConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return DiskInstantiationConfigComputeBeta(
      autoDelete: map['autoDelete'] == null ? null : map['autoDelete'] as bool,
      customImage:
          map['customImage'] == null ? null : map['customImage'] as String,
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      instantiateFrom: map['instantiateFrom'] == null
          ? null
          : DiskInstantiationConfigInstantiateFromComputeBeta.fromValue(
              map['instantiateFrom'] as String),
    );
  }
}
