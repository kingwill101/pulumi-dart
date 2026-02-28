// ignore_for_file: unused_element, unnecessary_cast

class GetAmiFilter {
  /// Name of the AMI that was provided during image creation.
  final String name;
  final List<String> values;

  /// Creates a new [GetAmiFilter].
  /// [name] Name of the AMI that was provided during image creation.
  /// [values] Required.
  GetAmiFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetAmiFilter.fromMap(Map<String, dynamic> map) {
    return GetAmiFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
