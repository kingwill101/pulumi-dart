// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadDiskRestorePropertiesResourceManagerTag {
  /// The identifier for this object. Format specified above.
  final String key;

  /// (Optional)
  final String? value;

  RestoreWorkloadDiskRestorePropertiesResourceManagerTag({
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

  factory RestoreWorkloadDiskRestorePropertiesResourceManagerTag.fromMap(
      Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestorePropertiesResourceManagerTag(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
