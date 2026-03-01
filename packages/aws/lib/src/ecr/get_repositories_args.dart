// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_repositories_get_repositories_args_doc}
/// Arguments for getRepositories.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_repositories_get_repositories_args_doc}
class GetRepositoriesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRepositoriesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRepositoriesArgs({
    String? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetRepositoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

