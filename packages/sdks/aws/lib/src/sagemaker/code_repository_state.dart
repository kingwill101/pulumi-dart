// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_repository_git_config.dart';

/// Input properties used for looking up and filtering CodeRepository resources.
class CodeRepositoryState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Code Repository.
  final pulumi.Input<String>? arn;
  /// The name of the Code Repository (must be unique).
  final pulumi.Input<String>? codeRepositoryName;
  /// Specifies details about the repository. see Git Config details below.
  final pulumi.Input<CodeRepositoryGitConfig>? gitConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [CodeRepositoryState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Code Repository.
  /// [codeRepositoryName] The name of the Code Repository (must be unique).
  /// [gitConfig] Specifies details about the repository. see Git Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  CodeRepositoryState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? codeRepositoryName,
    pulumi.Output<CodeRepositoryGitConfig>? gitConfig,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      codeRepositoryName = pulumi.Input.asOptionalInput<String>(codeRepositoryName),
      gitConfig = pulumi.Input.asOptionalInput<CodeRepositoryGitConfig>(gitConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'codeRepositoryName': ?codeRepositoryName,
      'gitConfig': ?pulumi.Input.mapOptionalInputValue<CodeRepositoryGitConfig, Map<String, dynamic>>(gitConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory CodeRepositoryState.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      codeRepositoryName: map['codeRepositoryName'] == null ? null : pulumi.Output.create<String>(map['codeRepositoryName'] as String),
      gitConfig: map['gitConfig'] == null ? null : pulumi.Output.create<CodeRepositoryGitConfig>(CodeRepositoryGitConfig.fromMap((map['gitConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

