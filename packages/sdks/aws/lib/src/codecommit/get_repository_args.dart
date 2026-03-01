// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecommit_get_repository_get_repository_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_codecommit_get_repository_get_repository_args_doc}
class GetRepositoryArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String> repositoryName;

  /// Creates a new [GetRepositoryArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] Name for the repository. This needs to be less than 100 characters.
  GetRepositoryArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> repositoryName,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryName = pulumi.Input.asInput<String>(repositoryName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'repositoryName': repositoryName,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryName: pulumi.Output.create<String>(map['repositoryName'] as String),
    );
  }
}

