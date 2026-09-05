// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticbeanstalk_get_solution_stack_get_solution_stack_args_doc}
/// Arguments for getSolutionStack.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_get_solution_stack_get_solution_stack_args_doc}
class GetSolutionStackArgs {
  /// If more than one result is returned, use the most
  /// recent solution stack.
  final pulumi.Input<bool?>? mostRecent;
  /// Regex string to apply to the solution stack list returned
  /// by AWS. See [Elastic Beanstalk Supported Platforms](http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html) from
  /// AWS documentation for reference solution stack names.
  ///
  /// &gt; **NOTE:** If more or less than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single solution stack, or use `mostRecent` to choose the most recent one.
  final pulumi.Input<String> nameRegex;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetSolutionStackArgs].
  /// [mostRecent] If more than one result is returned, use the most
  /// [nameRegex] Regex string to apply to the solution stack list returned
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetSolutionStackArgs({
    this.mostRecent,
    required this.nameRegex,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'nameRegex': nameRegex,
      'region': ?region,
    };
  }

  factory GetSolutionStackArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackArgs(
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nameRegex: pulumi.Input.fromValue(map['nameRegex'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
