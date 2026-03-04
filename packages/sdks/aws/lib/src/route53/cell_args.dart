// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_readiness_cell_cell_args_doc}
/// The set of arguments for Cell.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_readiness_cell_cell_args_doc}
class CellArgs {
  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> cellName;

  /// List of cell arns to add as nested fault domains within this cell.
  final pulumi.Input<List<String>>? cells;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CellArgs].
  /// [cellName] Unique name describing the cell.
  /// [cells] List of cell arns to add as nested fault domains within this cell.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  CellArgs({required this.cellName, this.cells, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cellName': cellName,
      'cells': ?cells,
      'tags': ?tags,
    };
  }

  factory CellArgs.fromMap(Map<String, dynamic> map) {
    return CellArgs(
      cellName: pulumi.Input.fromValue(map['cellName'] as String),
      cells: (() {
        final guardedValue = map['cells'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
