// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec of disk options.
class GoogleCloudAiplatformV1beta1DiskSpec {
  /// Size in GB of the boot disk (default is 100GB).
  final int? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final String? bootDiskType;

  GoogleCloudAiplatformV1beta1DiskSpec({
    this.bootDiskSizeGb,
    this.bootDiskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bootDiskSizeGbValue = bootDiskSizeGb;
    if (bootDiskSizeGbValue != null) {
      map['bootDiskSizeGb'] = bootDiskSizeGbValue;
    }
    final bootDiskTypeValue = bootDiskType;
    if (bootDiskTypeValue != null) {
      map['bootDiskType'] = bootDiskTypeValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1DiskSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1DiskSpec(
      bootDiskSizeGb:
          map['bootDiskSizeGb'] == null ? null : map['bootDiskSizeGb'] as int,
      bootDiskType:
          map['bootDiskType'] == null ? null : map['bootDiskType'] as String,
    );
  }
}
