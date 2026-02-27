// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../code_repository_git_config/code_repository_git_config.dart';

/// The set of arguments for CodeRepository.
class CodeRepositoryArgs {
  /// The name of the Code Repository (must be unique).
  final Input<String> codeRepositoryName;

  /// Specifies details about the repository. see Git Config details below.
  final Input<CodeRepositoryGitConfig> gitConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  CodeRepositoryArgs({
    required this.codeRepositoryName,
    required this.gitConfig,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['codeRepositoryName'] = codeRepositoryName;
    map['gitConfig'] =
        Input.mapInputValue<CodeRepositoryGitConfig, Map<String, dynamic>>(
            gitConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory CodeRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return CodeRepositoryArgs(
      codeRepositoryName: Input.asInput<String>(map['codeRepositoryName']),
      gitConfig: Input.asInput<CodeRepositoryGitConfig>(map['gitConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
