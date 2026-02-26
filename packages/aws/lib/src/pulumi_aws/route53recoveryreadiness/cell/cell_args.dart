// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Cell.
class CellArgs {
  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  final Input<String> cellName;

  /// List of cell arns to add as nested fault domains within this cell.
  final Input<List<String>>? cells;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final Input<Map<String, String>>? tags;

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
      cellName: Input.asInput<String>(map['cellName']),
      cells: Input.asOptionalInput<List<String>>(map['cells']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
