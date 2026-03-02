// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPatchBaselineGlobalFilter {
  /// Key for the filter.
  final pulumi.Input<String> key;
  /// Value for the filter.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetPatchBaselineGlobalFilter].
  /// [key] Key for the filter.
  /// [values] Value for the filter.
  GetPatchBaselineGlobalFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'values': values,
    };
  }

  factory GetPatchBaselineGlobalFilter.fromMap(Map<String, dynamic> map) {
    return GetPatchBaselineGlobalFilter(
      key: (map['key'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

