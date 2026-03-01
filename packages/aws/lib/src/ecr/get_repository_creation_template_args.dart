// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_repository_creation_template_get_repository_creation_template_args_doc}
/// Arguments for getRepositoryCreationTemplate.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_repository_creation_template_get_repository_creation_template_args_doc}
class GetRepositoryCreationTemplateArgs {
  /// The repository name prefix that the template matches against.
  final pulumi.Input<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to any created repositories.
  final pulumi.Input<Map<String, String>>? resourceTags;

  /// Creates a new [GetRepositoryCreationTemplateArgs].
  /// [prefix] The repository name prefix that the template matches against.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceTags] A map of tags to assign to any created repositories.
  GetRepositoryCreationTemplateArgs({
    required String prefix,
    String? region,
    Map<String, String>? resourceTags,
  }) : prefix = pulumi.Input.asInput<String>(prefix),
       region = pulumi.Input.asOptionalInput<String>(region),
       resourceTags = pulumi.Input.asOptionalInput<Map<String, String>>(
         resourceTags,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
      'region': ?region,
      'resourceTags': ?resourceTags,
    };
  }

  factory GetRepositoryCreationTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryCreationTemplateArgs(
      prefix: map['prefix'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceTags: map['resourceTags'] == null
          ? null
          : (map['resourceTags'] as Map).cast<String, String>(),
    );
  }
}
