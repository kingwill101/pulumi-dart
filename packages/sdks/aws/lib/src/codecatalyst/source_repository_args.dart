// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_codecatalyst_source_repository_source_repository_args_doc}
/// The set of arguments for SourceRepository.
/// {@endtemplate}
/// {@macro pulumi_codecatalyst_source_repository_source_repository_args_doc}
class SourceRepositoryArgs {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final pulumi.Input<String>? description;
  /// The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  final pulumi.Input<String>? name;
  /// The name of the project in the CodeCatalyst space.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the CodeCatalyst space.
  final pulumi.Input<String> spaceName;

  /// Creates a new [SourceRepositoryArgs].
  /// [description] The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  /// [name] The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  /// [projectName] The name of the project in the CodeCatalyst space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceName] The name of the CodeCatalyst space.
  SourceRepositoryArgs({
    this.description,
    this.name,
    required this.projectName,
    this.region,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'projectName': projectName,
      'region': ?region,
      'spaceName': spaceName,
    };
  }

  factory SourceRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return SourceRepositoryArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      spaceName: (map['spaceName'] as String).input(),
    );
  }
}

