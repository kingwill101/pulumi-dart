// ignore_for_file: unused_element, unnecessary_cast


class GetVolumeFilter {
  final String name;
  final List<String> values;

  /// Creates a new [GetVolumeFilter].
  /// [name] Required.
  /// [values] Required.
  GetVolumeFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetVolumeFilter.fromMap(Map<String, dynamic> map) {
    return GetVolumeFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

