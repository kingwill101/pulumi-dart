// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_catalog_data.dart';

/// {@template pulumi_ecrpublic_repository_repository_args_doc}
/// The set of arguments for Repository.
/// {@endtemplate}
/// {@macro pulumi_ecrpublic_repository_repository_args_doc}
class RepositoryArgs {
  /// Catalog data configuration for the repository. See below for schema.
  final pulumi.Input<RepositoryCatalogData>? catalogData;
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the repository.
  final pulumi.Input<String> repositoryName;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RepositoryArgs].
  /// [catalogData] Catalog data configuration for the repository. See below for schema.
  /// [forceDestroy] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositoryName] Name of the repository.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  RepositoryArgs({
    pulumi.Output<RepositoryCatalogData>? catalogData,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? region,
    required pulumi.Output<String> repositoryName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      catalogData = pulumi.Input.asOptionalInput<RepositoryCatalogData>(catalogData),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositoryName = pulumi.Input.asInput<String>(repositoryName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogData': ?pulumi.Input.mapOptionalInputValue<RepositoryCatalogData, Map<String, dynamic>>(catalogData, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'repositoryName': repositoryName,
      'tags': ?tags,
    };
  }

  factory RepositoryArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs(
      catalogData: map['catalogData'] == null ? null : pulumi.Output.create<RepositoryCatalogData>(RepositoryCatalogData.fromMap((map['catalogData'] as Map).cast<String, dynamic>())),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositoryName: pulumi.Output.create<String>(map['repositoryName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

