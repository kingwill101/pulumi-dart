// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Repository.
class RepositoryCodecommitArgs {
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

  RepositoryCodecommitArgs({
    this.defaultBranch,
    this.description,
    this.kmsKeyId,
    this.region,
    required this.repositoryName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultBranchValue = defaultBranch;
    if (defaultBranchValue != null) {
      map['defaultBranch'] = defaultBranchValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryName'] = repositoryName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory RepositoryCodecommitArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryCodecommitArgs(
      defaultBranch: pulumi.Input.asOptionalInput<String>(map['defaultBranch']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
