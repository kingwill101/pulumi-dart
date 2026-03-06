// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_spec.dart';

/// Workflow Version Properties
class WorkflowVersionProperties {
  /// Execution specification
  final pulumi.Input<dynamic>? specification;
  /// A list of stage specs
  final pulumi.Input<List<StageSpec>> stageSpec;

  /// Creates a new [WorkflowVersionProperties].
  /// [specification] Execution specification
  /// [stageSpec] A list of stage specs
  const WorkflowVersionProperties({
    this.specification,
    required this.stageSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification,
      'stageSpec': pulumi.Input.mapInputValue<List<StageSpec>, List<Map<String, dynamic>>>(stageSpec, (value) => pulumi.Input.encodeList<StageSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkflowVersionProperties.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionProperties(
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stageSpec: pulumi.Input.fromValue(pulumi.Input.decodeList<StageSpec>(map['stageSpec']!, (value) => StageSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

