// ignore_for_file: unused_element, unnecessary_cast


class EcsInstanceSetExcludeInstanceFilter {
  /// The type of the excluded. Valid values: `InstanceId`, `InstanceName`.
  final String key;
  /// The value of the excluded. The identification of the excluded instances. It is a list of instance Ids or names.
  final List<String> values;

  /// Creates a new [EcsInstanceSetExcludeInstanceFilter].
  /// [key] The type of the excluded. Valid values: `InstanceId`, `InstanceName`.
  /// [values] The value of the excluded. The identification of the excluded instances. It is a list of instance Ids or names.
  EcsInstanceSetExcludeInstanceFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory EcsInstanceSetExcludeInstanceFilter.fromMap(Map<String, dynamic> map) {
    return EcsInstanceSetExcludeInstanceFilter(
      key: map['key'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

