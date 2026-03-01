// ignore_for_file: unused_element, unnecessary_cast

class RestoreWorkloadComputeInstanceRestorePropertiesLabel {
  /// The identifier for this object. Format specified above.
  final String key;

  /// (Optional)
  final String? value;

  /// Creates a new [RestoreWorkloadComputeInstanceRestorePropertiesLabel].
  /// [key] The identifier for this object. Format specified above.
  /// [value] (Optional)
  RestoreWorkloadComputeInstanceRestorePropertiesLabel({
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': ?value};
  }

  factory RestoreWorkloadComputeInstanceRestorePropertiesLabel.fromMap(
    Map<String, dynamic> map,
  ) {
    return RestoreWorkloadComputeInstanceRestorePropertiesLabel(
      key: map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
