// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_repository_git_config.dart';

/// {@template pulumi_sagemaker_code_repository_code_repository_args_doc}
/// The set of arguments for CodeRepository.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_code_repository_code_repository_args_doc}
class CodeRepositoryArgs {
  /// The name of the Code Repository (must be unique).
  final pulumi.Input<String> codeRepositoryName;
  /// Specifies details about the repository. see Git Config details below.
  final pulumi.Input<CodeRepositoryGitConfig> gitConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeRepositoryArgs].
  /// [codeRepositoryName] The name of the Code Repository (must be unique).
  /// [gitConfig] Specifies details about the repository. see Git Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const CodeRepositoryArgs({
    required this.codeRepositoryName,
    required this.gitConfig,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryName': codeRepositoryName,
      'gitConfig': pulumi.Input.mapInputValue<CodeRepositoryGitConfig, Map<String, dynamic>>(gitConfig, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory CodeRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryArgs(
      codeRepositoryName: pulumi.Input.fromValue(map['codeRepositoryName'] as String),
      gitConfig: pulumi.Input.fromValue(CodeRepositoryGitConfig.fromMap((map['gitConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

