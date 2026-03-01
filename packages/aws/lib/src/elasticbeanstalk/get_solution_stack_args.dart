// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elasticbeanstalk_get_solution_stack_get_solution_stack_args_doc}
/// Arguments for getSolutionStack.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_get_solution_stack_get_solution_stack_args_doc}
class GetSolutionStackArgs {
  /// If more than one result is returned, use the most
  /// recent solution stack.
  final pulumi.Input<bool>? mostRecent;

  /// Regex string to apply to the solution stack list returned
  /// by AWS. See [Elastic Beanstalk Supported Platforms][beanstalk-platforms] from
  /// AWS documentation for reference solution stack names.
  ///
  /// > **NOTE:** If more or less than a single match is returned by the search,
  /// this call will fail. Ensure that your search is specific enough to return
  /// a single solution stack, or use `most_recent` to choose the most recent one.
  final pulumi.Input<String> nameRegex;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetSolutionStackArgs].
  /// [mostRecent] If more than one result is returned, use the most
  /// [nameRegex] Regex string to apply to the solution stack list returned
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetSolutionStackArgs({
    bool? mostRecent,
    required String nameRegex,
    String? region,
  }) : mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
       nameRegex = pulumi.Input.asInput<String>(nameRegex),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'nameRegex': nameRegex,
      'region': ?region,
    };
  }

  factory GetSolutionStackArgs.fromMap(Map<String, dynamic> map) {
    return GetSolutionStackArgs(
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      nameRegex: map['nameRegex'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
