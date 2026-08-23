// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_evaluation_config_automated.dart';
import 'evaluation_job_evaluation_config_human.dart';

class EvaluationJobEvaluationConfig {
  /// Configuration for an automated evaluation job that computes metrics. See `automated` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigAutomated>? automated;
  /// Configuration for an evaluation job that uses human workers. See `human` Block below.
  final pulumi.Input<EvaluationJobEvaluationConfigHuman>? human;

  /// Creates a new [EvaluationJobEvaluationConfig].
  /// [automated] Configuration for an automated evaluation job that computes metrics. See `automated` Block below.
  /// [human] Configuration for an evaluation job that uses human workers. See `human` Block below.
  const EvaluationJobEvaluationConfig({
    this.automated,
    this.human,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automated': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigAutomated, Map<String, dynamic>>(automated, (value) => value.toMap()),
      'human': ?pulumi.Input.mapOptionalInputValue<EvaluationJobEvaluationConfigHuman, Map<String, dynamic>>(human, (value) => value.toMap()),
    };
  }

  factory EvaluationJobEvaluationConfig.fromMap(Map<String, dynamic> map) {
    return EvaluationJobEvaluationConfig(
      automated: (() { final guardedValue = map['automated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigAutomated.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      human: (() { final guardedValue = map['human']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EvaluationJobEvaluationConfigHuman.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
