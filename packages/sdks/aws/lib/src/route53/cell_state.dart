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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cellName,
    pulumi.Output<List<String>>? cells,
    pulumi.Output<List<String>>? parentReadinessScopes,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cellName = pulumi.Input.asOptionalInput<String>(cellName),
      cells = pulumi.Input.asOptionalInput<List<String>>(cells),
      parentReadinessScopes = pulumi.Input.asOptionalInput<List<String>>(parentReadinessScopes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cellName: map['cellName'] == null ? null : pulumi.Output.create<String>(map['cellName'] as String),
      cells: map['cells'] == null ? null : pulumi.Output.create<List<String>>((map['cells'] as List).cast<String>()),
      parentReadinessScopes: map['parentReadinessScopes'] == null ? null : pulumi.Output.create<List<String>>((map['parentReadinessScopes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

