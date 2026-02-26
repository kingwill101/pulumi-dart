// ignore_for_file: unused_element, unnecessary_cast

class GetWorkerPoolTemplateVolumeEmptyDir {
  /// The different types of medium supported for EmptyDir. Default value: "MEMORY" Possible values: ["MEMORY"]
  final String medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  final String sizeLimit;

  GetWorkerPoolTemplateVolumeEmptyDir({
    required this.medium,
    required this.sizeLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['medium'] = medium;
    map['sizeLimit'] = sizeLimit;
    return map;
  }

  factory GetWorkerPoolTemplateVolumeEmptyDir.fromMap(
      Map<String, dynamic> map) {
    return GetWorkerPoolTemplateVolumeEmptyDir(
      medium: map['medium'] as String,
      sizeLimit: map['sizeLimit'] as String,
    );
  }
}
