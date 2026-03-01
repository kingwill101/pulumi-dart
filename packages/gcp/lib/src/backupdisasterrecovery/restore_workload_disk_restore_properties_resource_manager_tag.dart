// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadDiskRestorePropertiesResourceManagerTag {
  /// The identifier for this object. Format specified above.
  final String key;

  /// (Optional)
  final String? value;

  /// Creates a new [RestoreWorkloadDiskRestorePropertiesResourceManagerTag].
  /// [key] The identifier for this object. Format specified above.
  /// [value] (Optional)
  RestoreWorkloadDiskRestorePropertiesResourceManagerTag({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': ?value};
  }

  factory RestoreWorkloadDiskRestorePropertiesResourceManagerTag.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadDiskRestorePropertiesResourceManagerTag(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
