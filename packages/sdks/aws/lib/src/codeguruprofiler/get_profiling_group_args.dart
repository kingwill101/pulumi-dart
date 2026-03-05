// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codeguruprofiler_get_profiling_group_get_profiling_group_args_doc}
/// Arguments for getProfilingGroup.
/// {@endtemplate}
/// {@macro pulumi_codeguruprofiler_get_profiling_group_get_profiling_group_args_doc}
class GetProfilingGroupArgs {
  /// The name of the profiling group.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetProfilingGroupArgs].
  /// [name] The name of the profiling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetProfilingGroupArgs({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetProfilingGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetProfilingGroupArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

