// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Cell resources.
class CellState {
  /// ARN of the cell
  final pulumi.Input<String>? arn;
  /// Unique name describing the cell.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? cellName;
  /// List of cell arns to add as nested fault domains within this cell.
  final pulumi.Input<List<String>>? cells;
  /// List of readiness scopes (recovery groups or cells) that contain this cell.
  final pulumi.Input<List<String>>? parentReadinessScopes;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CellState].
  /// [arn] ARN of the cell
  /// [cellName] Unique name describing the cell.
  /// [cells] List of cell arns to add as nested fault domains within this cell.
  /// [parentReadinessScopes] List of readiness scopes (recovery groups or cells) that contain this cell.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CellState({
    this.arn,
    this.cellName,
    this.cells,
    this.parentReadinessScopes,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cellName': ?cellName,
      'cells': ?cells,
      'parentReadinessScopes': ?parentReadinessScopes,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CellState.fromMap(Map<String, dynamic> map) {
    return CellState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      cellName: map['cellName'] == null ? null : (map['cellName'] as String).input(),
      cells: map['cells'] == null ? null : ((map['cells'] as List).cast<String>()).input(),
      parentReadinessScopes: map['parentReadinessScopes'] == null ? null : ((map['parentReadinessScopes'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

