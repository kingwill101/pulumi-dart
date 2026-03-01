// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec of disk options.
class GoogleCloudAiplatformV1DiskSpec {
  /// Size in GB of the boot disk (default is 100GB).
  final int? bootDiskSizeGb;

  /// Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  final String? bootDiskType;

  /// Creates a new [GoogleCloudAiplatformV1DiskSpec].
  /// [bootDiskSizeGb] Size in GB of the boot disk (default is 100GB).
  /// [bootDiskType] Type of the boot disk (default is "pd-ssd"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) or "pd-standard" (Persistent Disk Hard Disk Drive).
  GoogleCloudAiplatformV1DiskSpec({this.bootDiskSizeGb, this.bootDiskType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDiskSizeGb': ?bootDiskSizeGb,
      'bootDiskType': ?bootDiskType,
    };
  }

  factory GoogleCloudAiplatformV1DiskSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1DiskSpec(
      bootDiskSizeGb: map['bootDiskSizeGb'] == null
          ? null
          : map['bootDiskSizeGb'] as int,
      bootDiskType: map['bootDiskType'] == null
          ? null
          : map['bootDiskType'] as String,
    );
  }
}
