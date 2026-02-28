// ignore_for_file: unused_element, unnecessary_cast


class RestoreWorkloadDiskRestorePropertiesLabel {
  /// The identifier for this object. Format specified above.
  final String key;
  /// (Optional)
  final String? value;

  /// Creates a new [RestoreWorkloadDiskRestorePropertiesLabel].
  /// [key] The identifier for this object. Format specified above.
  /// [value] (Optional)
  RestoreWorkloadDiskRestorePropertiesLabel({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': ?value,
    };
  }

  factory RestoreWorkloadDiskRestorePropertiesLabel.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadDiskRestorePropertiesLabel(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

