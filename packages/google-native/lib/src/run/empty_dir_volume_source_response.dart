// ignore_for_file: unused_element, unnecessary_cast

/// In memory (tmpfs) ephemeral storage. It is ephemeral in the sense that when the sandbox is taken down, the data is destroyed with it (it does not persist across sandbox runs).
class EmptyDirVolumeSourceResponse {
  /// The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final String medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  final String sizeLimit;

  /// Creates a new [EmptyDirVolumeSourceResponse].
  /// [medium] The medium on which the data is stored. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  /// [sizeLimit] Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers. The default is nil which means that the limit is undefined. More info: https://cloud.google.com/run/docs/configuring/in-memory-volumes#configure-volume. Info in Kubernetes: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir
  EmptyDirVolumeSourceResponse({required this.medium, required this.sizeLimit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'medium': medium, 'sizeLimit': sizeLimit};
  }

  factory EmptyDirVolumeSourceResponse.fromMap(Map<String, dynamic> map) {
    return EmptyDirVolumeSourceResponse(
      medium: map['medium'] as String,
      sizeLimit: map['sizeLimit'] as String,
    );
  }
}
