// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_status_response.dart';

/// The information of the experiment run.
class ExperimentExecutionDetailsPropertiesResponseRunInformation {
  /// The steps of the experiment run.
  final pulumi.Input<List<StepStatusResponse>> steps;

  /// Creates a new [ExperimentExecutionDetailsPropertiesResponseRunInformation].
  /// [steps] The steps of the experiment run.
  const ExperimentExecutionDetailsPropertiesResponseRunInformation({
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'steps': pulumi.Input.mapInputValue<List<StepStatusResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<StepStatusResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentExecutionDetailsPropertiesResponseRunInformation.fromMap(Map<String, dynamic> map) {
    return ExperimentExecutionDetailsPropertiesResponseRunInformation(
      steps: pulumi.Input.fromValue(pulumi.Input.decodeList<StepStatusResponse>(map['steps']!, (value) => StepStatusResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

