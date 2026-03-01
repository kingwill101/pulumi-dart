// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecr_get_repository_get_repository_args_doc}
/// Arguments for getRepository.
/// {@endtemplate}
/// {@macro pulumi_ecr_get_repository_get_repository_args_doc}
class GetRepositoryArgs {
  /// Name of the ECR Repository.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Registry ID where the repository was created.
  final pulumi.Input<String>? registryId;
  /// Map of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetRepositoryArgs].
  /// [name] Name of the ECR Repository.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] Registry ID where the repository was created.
  /// [tags] Map of tags assigned to the resource.
  GetRepositoryArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'registryId': ?registryId,
      'tags': ?tags,
    };
  }

  factory GetRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return GetRepositoryArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

