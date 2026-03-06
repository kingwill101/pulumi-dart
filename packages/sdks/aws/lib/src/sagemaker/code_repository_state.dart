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
  const CodeRepositoryState({
    this.arn,
    this.codeRepositoryName,
    this.gitConfig,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      codeRepositoryName: (() { final guardedValue = map['codeRepositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitConfig: (() { final guardedValue = map['gitConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CodeRepositoryGitConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

