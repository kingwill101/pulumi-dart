// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kendra_get_experience_get_experience_args_doc}
/// Arguments for getExperience.
/// {@endtemplate}
/// {@macro pulumi_kendra_get_experience_get_experience_args_doc}
class GetExperienceArgs {
  /// Identifier of the Experience.
  final pulumi.Input<String> experienceId;
  /// Identifier of the index that contains the Experience.
  final pulumi.Input<String> indexId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetExperienceArgs].
  /// [experienceId] Identifier of the Experience.
  /// [indexId] Identifier of the index that contains the Experience.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetExperienceArgs({
    required this.experienceId,
    required this.indexId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'experienceId': experienceId,
      'indexId': indexId,
      'region': ?region,
    };
  }

  factory GetExperienceArgs.fromMap(Map<String, dynamic> map) {
    return GetExperienceArgs(
      experienceId: pulumi.Input.fromValue(map['experienceId'] as String),
      indexId: pulumi.Input.fromValue(map['indexId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
