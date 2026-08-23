// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob {
  /// Parent tuning job name.
  final pulumi.Input<String> name;

  /// Creates a new [HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob].
  /// [name] Parent tuning job name.
  const HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob.fromMap(Map<String, dynamic> map) {
    return HyperParameterTuningJobWarmStartConfigParentHyperParameterTuningJob(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
