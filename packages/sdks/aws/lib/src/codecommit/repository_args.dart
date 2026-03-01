// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecommit_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_codecommit_repository_repository_args_doc}
class RepositoryArgs {
  /// The default branch of the repository. The branch specified here needs to exist.
  final pulumi.Input<String>? defaultBranch;
  /// The description of the repository. This needs to be less than 1000 characters
  final pulumi.Input<String>? description;
  /// The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String> repositoryName;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RepositoryArgs].
  /// [defaultBranch] The default branch of the repository. The branch specified here needs to exist.
  /// [description] The description of the repository. This needs to be less than 1000 characters
  /// [kmsKeyId] The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] The name for the repository. This needs to be less than 100 characters.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RepositoryArgs({
    pulumi.Output<String>? defaultBranch,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repositoryName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      defaultBranch = pulumi.Input.asOptionalInput<String>(defaultBranch),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryName = pulumi.Input.asInput<String>(repositoryName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBranch': ?defaultBranch,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'repositoryName': repositoryName,
      'tags': ?tags,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      defaultBranch: map['defaultBranch'] == null ? null : pulumi.Output.create<String>(map['defaultBranch'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryName: pulumi.Output.create<String>(map['repositoryName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

