// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_spec.dart';

/// Workflow Version Properties
class WorkflowVersionProperties {
  /// Execution specification
  final dynamic specification;
  /// A list of stage specs
  final List<StageSpec> stageSpec;

  /// Creates a new [WorkflowVersionProperties].
  /// [specification] Execution specification
  /// [stageSpec] A list of stage specs
  WorkflowVersionProperties({
    this.specification,
    required this.stageSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification,
      'stageSpec': pulumi.Input.encodeList<StageSpec, Map<String, dynamic>>(stageSpec, (value) => value.toMap()),
    };
  }

  factory WorkflowVersionProperties.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionProperties(
      specification: map['specification'] == null ? null : map['specification'],
      stageSpec: pulumi.Input.decodeList<StageSpec>(map['stageSpec'], (value) => StageSpec.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

