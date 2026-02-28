// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag {
  /// The identifier for this object. Format specified above.
  final String key;

  /// (Optional)
  final String? value;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag].
  /// [key] The identifier for this object. Format specified above.
  /// [value] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadComputeInstanceRestorePropertiesParamsResourceManagerTag(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
