// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Cell.
class CellArgs {
  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> cellName;

  /// List of cell arns to add as nested fault domains within this cell.
  final pulumi.Input<List<String>>? cells;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;

  CellArgs({
    required this.cellName,
    this.cells,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cellName'] = cellName;
    final cellsValue = cells;
    if (cellsValue != null) {
      map['cells'] = cellsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CellArgs.fromMap(Map<String, dynamic> map) {
    return CellArgs(
      cellName: pulumi.Input.asInput<String>(map['cellName']),
      cells: pulumi.Input.asOptionalInput<List<String>>(map['cells']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
