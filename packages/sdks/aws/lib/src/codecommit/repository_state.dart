// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// The ARN of the repository
  final pulumi.Input<String>? arn;
  /// The URL to use for cloning the repository over HTTPS.
  final pulumi.Input<String>? cloneUrlHttp;
  /// The URL to use for cloning the repository over SSH.
  final pulumi.Input<String>? cloneUrlSsh;
  /// The default branch of the repository. The branch specified here needs to exist.
  final pulumi.Input<String>? defaultBranch;
  /// The description of the repository. This needs to be less than 1000 characters
  final pulumi.Input<String>? description;
  /// The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the repository
  final pulumi.Input<String>? repositoryId;
  /// The name for the repository. This needs to be less than 100 characters.
  final pulumi.Input<String>? repositoryName;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RepositoryState].
  /// [arn] The ARN of the repository
  /// [cloneUrlHttp] The URL to use for cloning the repository over HTTPS.
  /// [cloneUrlSsh] The URL to use for cloning the repository over SSH.
  /// [defaultBranch] The default branch of the repository. The branch specified here needs to exist.
  /// [description] The description of the repository. This needs to be less than 1000 characters
  /// [kmsKeyId] The ARN of the encryption key. If no key is specified, the default `aws/codecommit` Amazon Web Services managed key is used.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryId] The ID of the repository
  /// [repositoryName] The name for the repository. This needs to be less than 100 characters.
  /// [tags] Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RepositoryState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? cloneUrlHttp,
    pulumi.Output<String>? cloneUrlSsh,
    pulumi.Output<String>? defaultBranch,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? repositoryId,
    pulumi.Output<String>? repositoryName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      cloneUrlHttp = pulumi.Input.asOptionalInput<String>(cloneUrlHttp),
      cloneUrlSsh = pulumi.Input.asOptionalInput<String>(cloneUrlSsh),
      defaultBranch = pulumi.Input.asOptionalInput<String>(defaultBranch),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryId = pulumi.Input.asOptionalInput<String>(repositoryId),
      repositoryName = pulumi.Input.asOptionalInput<String>(repositoryName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cloneUrlHttp': ?cloneUrlHttp,
      'cloneUrlSsh': ?cloneUrlSsh,
      'defaultBranch': ?defaultBranch,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'repositoryId': ?repositoryId,
      'repositoryName': ?repositoryName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      cloneUrlHttp: map['cloneUrlHttp'] == null ? null : pulumi.Output.create<String>(map['cloneUrlHttp'] as String),
      cloneUrlSsh: map['cloneUrlSsh'] == null ? null : pulumi.Output.create<String>(map['cloneUrlSsh'] as String),
      defaultBranch: map['defaultBranch'] == null ? null : pulumi.Output.create<String>(map['defaultBranch'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryId: map['repositoryId'] == null ? null : pulumi.Output.create<String>(map['repositoryId'] as String),
      repositoryName: map['repositoryName'] == null ? null : pulumi.Output.create<String>(map['repositoryName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

