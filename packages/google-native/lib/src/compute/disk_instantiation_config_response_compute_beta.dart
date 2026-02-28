// ignore_for_file: unused_element, unnecessary_cast

/// A specification of the desired way to instantiate a disk in the instance template when its created from a source instance.
class DiskInstantiationConfigResponseComputeBeta {
  /// Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  final bool autoDelete;

  /// The custom source image to be used to restore this disk when instantiating this instance template.
  final String customImage;

  /// Specifies the device name of the disk to which the configurations apply to.
  final String deviceName;

  /// Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  final String instantiateFrom;

  /// Creates a new [DiskInstantiationConfigResponseComputeBeta].
  /// [autoDelete] Specifies whether the disk will be auto-deleted when the instance is deleted (but not when the disk is detached from the instance).
  /// [customImage] The custom source image to be used to restore this disk when instantiating this instance template.
  /// [deviceName] Specifies the device name of the disk to which the configurations apply to.
  /// [instantiateFrom] Specifies whether to include the disk and what image to use. Possible values are: - source-image: to use the same image that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - source-image-family: to use the same image family that was used to create the source instance's corresponding disk. Applicable to the boot disk and additional read-write disks. - custom-image: to use a user-provided image url for disk creation. Applicable to the boot disk and additional read-write disks. - attach-read-only: to attach a read-only disk. Applicable to read-only disks. - do-not-include: to exclude a disk from the template. Applicable to additional read-write disks, local SSDs, and read-only disks.
  DiskInstantiationConfigResponseComputeBeta({
    required this.autoDelete,
    required this.customImage,
    required this.deviceName,
    required this.instantiateFrom,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoDelete'] = autoDelete;
    map['customImage'] = customImage;
    map['deviceName'] = deviceName;
    map['instantiateFrom'] = instantiateFrom;
    return map;
  }

  factory DiskInstantiationConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return DiskInstantiationConfigResponseComputeBeta(
      autoDelete: map['autoDelete'] as bool,
      customImage: map['customImage'] as String,
      deviceName: map['deviceName'] as String,
      instantiateFrom: map['instantiateFrom'] as String,
    );
  }
}
