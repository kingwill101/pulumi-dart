// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PatchBaselineApprovalRulePatchFilter {
  final pulumi.Input<String> key;
  final pulumi.Input<List<String>> values;

  /// Creates a new [PatchBaselineApprovalRulePatchFilter].
  /// [key] Required.
  /// [values] Required.
  PatchBaselineApprovalRulePatchFilter({
    required this.key,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'values': values};
  }

  factory PatchBaselineApprovalRulePatchFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return PatchBaselineApprovalRulePatchFilter(
      key: pulumi.Input.fromValue(map['key'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
