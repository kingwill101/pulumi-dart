// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCostCategory.
class GetCostCategoryArgs {
  /// Unique name for the Cost Category.
  final pulumi.Input<String> costCategoryArn;

  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<Map<String, String>>? tags;

  GetCostCategoryArgs({
    required this.costCategoryArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['costCategoryArn'] = costCategoryArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetCostCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryArgs(
      costCategoryArn: pulumi.Input.asInput<String>(map['costCategoryArn']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
