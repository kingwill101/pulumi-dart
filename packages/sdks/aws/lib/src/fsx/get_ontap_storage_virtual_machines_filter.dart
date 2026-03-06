// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetOntapStorageVirtualMachinesFilter {
  /// Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/fsx/latest/APIReference/API_StorageVirtualMachineFilter.html).
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field. An SVM will be selected if any one of the given values matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetOntapStorageVirtualMachinesFilter].
  /// [name] Name of the field to filter by, as defined by [the underlying AWS API](https://docs.aws.amazon.com/fsx/latest/APIReference/API_StorageVirtualMachineFilter.html).
  /// [values] Set of values that are accepted for the given field. An SVM will be selected if any one of the given values matches.
  const GetOntapStorageVirtualMachinesFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetOntapStorageVirtualMachinesFilter.fromMap(Map<String, dynamic> map) {
    return GetOntapStorageVirtualMachinesFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

