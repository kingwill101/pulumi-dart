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
  const CellState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cellName: (() { final guardedValue = map['cellName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cells: (() { final guardedValue = map['cells']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parentReadinessScopes: (() { final guardedValue = map['parentReadinessScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

