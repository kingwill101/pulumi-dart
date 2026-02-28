// ignore_for_file: unused_element, unnecessary_cast

/// In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
class EmptyDirVolumeSource {
  /// The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final String? medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  final String? sizeLimit;

  /// Creates a new [EmptyDirVolumeSource].
  /// [medium] The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mediumValue = medium;
    if (mediumValue != null) {
      map['medium'] = mediumValue;
    }
    final sizeLimitValue = sizeLimit;
    if (sizeLimitValue != null) {
      map['sizeLimit'] = sizeLimitValue;
    }
    return map;
  }

  factory EmptyDirVolumeSource.fromMap(Map<String, dynamic> map) {
    return EmptyDirVolumeSource(
      medium: map['medium'] == null ? null : map['medium'] as String,
      sizeLimit: map['sizeLimit'] == null ? null : map['sizeLimit'] as String,
    );
  }
}
