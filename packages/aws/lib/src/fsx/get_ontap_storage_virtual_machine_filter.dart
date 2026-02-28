// ignore_for_file: unused_element, unnecessary_cast


class GetOntapStorageVirtualMachineFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/fsx/latest/APIReference/API_StorageVirtualMachineFilter.html).
  final String name;
  /// Set of values that are accepted for the given field. An SVM will be selected if any one of the given values matches.
  final List<String> values;

  /// Creates a new [GetOntapStorageVirtualMachineFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/fsx/latest/APIReference/API_StorageVirtualMachineFilter.html).
  /// [values] Set of values that are accepted for the given field. An SVM will be selected if any one of the given values matches.
  GetOntapStorageVirtualMachineFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetOntapStorageVirtualMachineFilter.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachineFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}

