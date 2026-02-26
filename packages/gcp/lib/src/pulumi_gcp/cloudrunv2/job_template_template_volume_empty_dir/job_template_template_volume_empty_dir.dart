// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateTemplateVolumeEmptyDir {
  /// The different types of medium supported for EmptyDir.
  /// Default value is `MEMORY`.
  /// Possible values are: `MEMORY`.
  final String? medium;

  /// Limit on the storage usable by this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. This field's values are of the 'Quantity' k8s type: https://kubernetes.io/docs/reference/kubernetes-api/common-definitions/quantity/. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes/#emptydir.
  final String? sizeLimit;

  JobTemplateTemplateVolumeEmptyDir({
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

  factory JobTemplateTemplateVolumeEmptyDir.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateVolumeEmptyDir(
      medium: map['medium'] == null ? null : map['medium'] as String,
      sizeLimit: map['sizeLimit'] == null ? null : map['sizeLimit'] as String,
    );
  }
}
