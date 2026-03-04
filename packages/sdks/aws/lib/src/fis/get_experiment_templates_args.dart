// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fis_get_experiment_templates_get_experiment_templates_args_doc}
/// Arguments for getExperimentTemplates.
/// {@endtemplate}
/// {@macro pulumi_fis_get_experiment_templates_get_experiment_templates_args_doc}
class GetExperimentTemplatesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match
  /// a pair on the desired experiment templates.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetExperimentTemplatesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match
  GetExperimentTemplatesArgs({this.region, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'tags': ?tags};
  }

  factory GetExperimentTemplatesArgs.fromMap(Map<String, dynamic> map) {
    return GetExperimentTemplatesArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
