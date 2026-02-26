// ignore_for_file: unused_element, unnecessary_cast

/// Represents the spec of persistent disk options.
class GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse {
  /// Size in GB of the disk (default is 100GB).
  final String diskSizeGb;

  /// Type of the disk (default is "pd-standard"). Valid values: "pd-ssd" (Persistent Disk Solid State Drive) "pd-standard" (Persistent Disk Hard Disk Drive) "pd-balanced" (Balanced Persistent Disk) "pd-extreme" (Extreme Persistent Disk)
  final String diskType;

  GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse({
    required this.diskSizeGb,
    required this.diskType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskSizeGb'] = diskSizeGb;
    map['diskType'] = diskType;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1PersistentDiskSpecResponse(
      diskSizeGb: map['diskSizeGb'] as String,
      diskType: map['diskType'] as String,
    );
  }
}
