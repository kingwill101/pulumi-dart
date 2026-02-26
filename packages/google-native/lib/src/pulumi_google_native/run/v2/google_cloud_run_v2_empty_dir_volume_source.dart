// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_run_v2_empty_dir_volume_source_medium.dart';

/// In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
class GoogleCloudRunV2EmptyDirVolumeSource {
  /// The medium on which the data is stored. Acceptable values today is only MEMORY or none. When none, the default will currently be backed by memory but could change over time. +optional
  final GoogleCloudRunV2EmptyDirVolumeSourceMedium? medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  final String? sizeLimit;

  GoogleCloudRunV2EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = mediumValue.value;
    }
    final sizeLimitValue = sizeLimit;
    if (sizeLimitValue != null) {
      map['sizeLimit'] = sizeLimitValue;
    }
    return map;
  }

  factory GoogleCloudRunV2EmptyDirVolumeSource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRunV2EmptyDirVolumeSource(
      medium: map['medium'] == null
          ? null
          : GoogleCloudRunV2EmptyDirVolumeSourceMedium.fromValue(
              map['medium'] as String),
      sizeLimit: map['sizeLimit'] == null ? null : map['sizeLimit'] as String,
    );
  }
}
