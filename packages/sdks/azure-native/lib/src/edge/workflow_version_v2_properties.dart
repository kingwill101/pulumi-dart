// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stage_spec.dart';

/// Workflow Version Properties
class WorkflowVersionV2Properties {
  /// Execution specification
  final pulumi.Input<dynamic>? specification;
  /// A list of stage specs
  final pulumi.Input<List<StageSpec>> stageSpec;

  /// Creates a new [WorkflowVersionV2Properties].
  /// [specification] Execution specification
  /// [stageSpec] A list of stage specs
  const WorkflowVersionV2Properties({
    this.specification,
    required this.stageSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': ?specification,
      'stageSpec': pulumi.Input.mapInputValue<List<StageSpec>, List<Map<String, dynamic>>>(stageSpec, (value) => pulumi.Input.encodeList<StageSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkflowVersionV2Properties.fromMap(Map<String, dynamic> map) {
    return WorkflowVersionV2Properties(
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      stageSpec: pulumi.Input.fromValue(pulumi.Input.decodeList<StageSpec>(map['stageSpec']!, (value) => StageSpec.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
