// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_target_sagemaker_pipeline_target_pipeline_parameter_list.dart';

class EventTargetSagemakerPipelineTarget {
  /// List of Parameter names and values for SageMaker AI Model Building Pipeline execution.
  final pulumi.Input<List<EventTargetSagemakerPipelineTargetPipelineParameterList>>? pipelineParameterLists;

  /// Creates a new [EventTargetSagemakerPipelineTarget].
  /// [pipelineParameterLists] List of Parameter names and values for SageMaker AI Model Building Pipeline execution.
  const EventTargetSagemakerPipelineTarget({
    this.pipelineParameterLists,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineParameterLists': ?pulumi.Input.mapOptionalInputValue<List<EventTargetSagemakerPipelineTargetPipelineParameterList>, List<Map<String, dynamic>>>(pipelineParameterLists, (value) => pulumi.Input.encodeList<EventTargetSagemakerPipelineTargetPipelineParameterList, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EventTargetSagemakerPipelineTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetSagemakerPipelineTarget(
      pipelineParameterLists: (() { final guardedValue = map['pipelineParameterLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EventTargetSagemakerPipelineTargetPipelineParameterList>(guardedValue, (value) => EventTargetSagemakerPipelineTargetPipelineParameterList.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

