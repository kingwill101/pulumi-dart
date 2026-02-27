// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'display_data.dart';
import 'execution_stage_summary.dart';
import 'transform_summary.dart';

/// A descriptive representation of submitted pipeline as well as the executed form. This data is provided by the Dataflow service for ease of visualizing the pipeline and interpreting Dataflow provided metrics.
class PipelineDescription {
  /// Pipeline level display data.
  final List<DisplayData>? displayData;

  /// Description of each stage of execution of the pipeline.
  final List<ExecutionStageSummary>? executionPipelineStage;

  /// Description of each transform in the pipeline and collections between them.
  final List<TransformSummary>? originalPipelineTransform;

  /// A hash value of the submitted pipeline portable graph step names if exists.
  final String? stepNamesHash;

  PipelineDescription({
    this.displayData,
    this.executionPipelineStage,
    this.originalPipelineTransform,
    this.stepNamesHash,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayDataValue = displayData;
    if (displayDataValue != null) {
      map['displayData'] = Input.encodeList<DisplayData, Map<String, dynamic>>(
          displayDataValue, (value) => value.toMap());
    }
    final executionPipelineStageValue = executionPipelineStage;
    if (executionPipelineStageValue != null) {
      map['executionPipelineStage'] =
          Input.encodeList<ExecutionStageSummary, Map<String, dynamic>>(
              executionPipelineStageValue, (value) => value.toMap());
    }
    final originalPipelineTransformValue = originalPipelineTransform;
    if (originalPipelineTransformValue != null) {
      map['originalPipelineTransform'] =
          Input.encodeList<TransformSummary, Map<String, dynamic>>(
              originalPipelineTransformValue, (value) => value.toMap());
    }
    final stepNamesHashValue = stepNamesHash;
    if (stepNamesHashValue != null) {
      map['stepNamesHash'] = stepNamesHashValue;
    }
    return map;
  }

  factory PipelineDescription.fromMap(Map<String, dynamic> map) {
    return PipelineDescription(
      displayData: map['displayData'] == null
          ? null
          : Input.decodeList<DisplayData>(
              map['displayData'],
              (value) =>
                  DisplayData.fromMap((value as Map).cast<String, dynamic>())),
      executionPipelineStage: map['executionPipelineStage'] == null
          ? null
          : Input.decodeList<ExecutionStageSummary>(
              map['executionPipelineStage'],
              (value) => ExecutionStageSummary.fromMap(
                  (value as Map).cast<String, dynamic>())),
      originalPipelineTransform: map['originalPipelineTransform'] == null
          ? null
          : Input.decodeList<TransformSummary>(
              map['originalPipelineTransform'],
              (value) => TransformSummary.fromMap(
                  (value as Map).cast<String, dynamic>())),
      stepNamesHash:
          map['stepNamesHash'] == null ? null : map['stepNamesHash'] as String,
    );
  }
}
