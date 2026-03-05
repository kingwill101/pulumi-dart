// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costexplorer_get_cost_category_get_cost_category_args_doc}
/// Arguments for getCostCategory.
/// {@endtemplate}
/// {@macro pulumi_costexplorer_get_cost_category_get_cost_category_args_doc}
class GetCostCategoryArgs {
  /// Unique name for the Cost Category.
  final pulumi.Input<String> costCategoryArn;
  /// Configuration block for the specific `Tag` to use for `Expression`. See below.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCostCategoryArgs].
  /// [costCategoryArn] Unique name for the Cost Category.
  /// [tags] Configuration block for the specific `Tag` to use for `Expression`. See below.
  GetCostCategoryArgs({
    required this.costCategoryArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'costCategoryArn': costCategoryArn,
      'tags': ?tags,
    };
  }

  factory GetCostCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GetCostCategoryArgs(
      costCategoryArn: pulumi.Input.fromValue(map['costCategoryArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

