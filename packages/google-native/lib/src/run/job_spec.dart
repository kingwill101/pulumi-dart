// ignore_for_file: unused_element, unnecessary_cast

import 'execution_template_spec.dart';

/// JobSpec describes how the job will look.
class JobSpec {
  /// Optional. Describes the execution that will be created when running a job.
  final ExecutionTemplateSpec? template;

  /// Creates a new [JobSpec].
  /// [template] Optional. Describes the execution that will be created when running a job.
  JobSpec({this.template});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'template': ?template == null ? null : template!.toMap(),
    };
  }

  factory JobSpec.fromMap(Map<String, dynamic> map) {
    return JobSpec(
      template: map['template'] == null
          ? null
          : ExecutionTemplateSpec.fromMap(
              (map['template'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
