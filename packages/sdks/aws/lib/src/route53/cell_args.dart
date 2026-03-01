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
  CellArgs({
    required pulumi.Output<String> cellName,
    pulumi.Output<List<String>>? cells,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      cellName = pulumi.Input.asInput<String>(cellName),
      cells = pulumi.Input.asOptionalInput<List<String>>(cells),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cellName': cellName,
      'cells': ?cells,
      'tags': ?tags,
    };
  }

  factory CellArgs.fromMap(Map<String, dynamic> map) {
    return CellArgs(
      cellName: pulumi.Output.create<String>(map['cellName'] as String),
      cells: map['cells'] == null ? null : pulumi.Output.create<List<String>>((map['cells'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

