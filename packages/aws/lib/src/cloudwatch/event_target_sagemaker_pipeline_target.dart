// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_target_sagemaker_pipeline_target_pipeline_parameter_list.dart';

class EventTargetSagemakerPipelineTarget {
  /// List of Parameter names and values for SageMaker AI Model Building Pipeline execution.
  final List<EventTargetSagemakerPipelineTargetPipelineParameterList>?
      pipelineParameterLists;

  /// Creates a new [EventTargetSagemakerPipelineTarget].
  /// [pipelineParameterLists] List of Parameter names and values for SageMaker AI Model Building Pipeline execution.
  EventTargetSagemakerPipelineTarget({
    this.pipelineParameterLists,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pipelineParameterListsValue = pipelineParameterLists;
    if (pipelineParameterListsValue != null) {
      map['pipelineParameterLists'] = pulumi.Input.encodeList<
              EventTargetSagemakerPipelineTargetPipelineParameterList,
              Map<String, dynamic>>(
          pipelineParameterListsValue, (value) => value.toMap());
    }
    return map;
  }

  factory EventTargetSagemakerPipelineTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetSagemakerPipelineTarget(
      pipelineParameterLists: map['pipelineParameterLists'] == null
          ? null
          : pulumi.Input.decodeList<
                  EventTargetSagemakerPipelineTargetPipelineParameterList>(
              map['pipelineParameterLists'],
              (value) => EventTargetSagemakerPipelineTargetPipelineParameterList
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
