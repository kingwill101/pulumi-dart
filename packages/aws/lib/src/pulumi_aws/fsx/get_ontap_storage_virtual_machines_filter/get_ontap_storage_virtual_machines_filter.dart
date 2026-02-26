// ignore_for_file: unused_element, unnecessary_cast

class GetOntapStorageVirtualMachinesFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/fsx/latest/APIReference/API_StorageVirtualMachineFilter.html).
  final String name;

  /// Set of values that are accepted for the given field. An SVM will be selected if any one of the given values matches.
  final List<String> values;

  GetOntapStorageVirtualMachinesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetOntapStorageVirtualMachinesFilter.fromMap(
      Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
