// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_catalog_data.dart';

/// Input properties used for looking up and filtering Repository resources.
class RepositoryState {
  /// Full ARN of the repository.
  final pulumi.Input<String>? arn;
  /// Catalog data configuration for the repository. See below for schema.
  final pulumi.Input<RepositoryCatalogData>? catalogData;
  final pulumi.Input<bool>? forceDestroy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The registry ID where the repository was created.
  final pulumi.Input<String>? registryId;
  /// Name of the repository.
  final pulumi.Input<String>? repositoryName;
  /// The URI of the repository.
  final pulumi.Input<String>? repositoryUri;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [RepositoryState].
  /// [arn] Full ARN of the repository.
  /// [catalogData] Catalog data configuration for the repository. See below for schema.
  /// [forceDestroy] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registryId] The registry ID where the repository was created.
  /// [repositoryName] Name of the repository.
  /// [repositoryUri] The URI of the repository.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  RepositoryState({
    pulumi.Output<String>? arn,
    pulumi.Output<RepositoryCatalogData>? catalogData,
    pulumi.Output<bool>? forceDestroy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? registryId,
    pulumi.Output<String>? repositoryName,
    pulumi.Output<String>? repositoryUri,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      catalogData = pulumi.Input.asOptionalInput<RepositoryCatalogData>(catalogData),
      forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
      region = pulumi.Input.asOptionalInput<String>(region),
      registryId = pulumi.Input.asOptionalInput<String>(registryId),
      repositoryName = pulumi.Input.asOptionalInput<String>(repositoryName),
      repositoryUri = pulumi.Input.asOptionalInput<String>(repositoryUri),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'catalogData': ?pulumi.Input.mapOptionalInputValue<RepositoryCatalogData, Map<String, dynamic>>(catalogData, (value) => value.toMap()),
      'forceDestroy': ?forceDestroy,
      'region': ?region,
      'registryId': ?registryId,
      'repositoryName': ?repositoryName,
      'repositoryUri': ?repositoryUri,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory RepositoryState.fromMap(Map<String, dynamic> map) {
    return RepositoryState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      catalogData: map['catalogData'] == null ? null : pulumi.Output.create<RepositoryCatalogData>(RepositoryCatalogData.fromMap((map['catalogData'] as Map).cast<String, dynamic>())),
      forceDestroy: map['forceDestroy'] == null ? null : pulumi.Output.create<bool>(map['forceDestroy'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registryId: map['registryId'] == null ? null : pulumi.Output.create<String>(map['registryId'] as String),
      repositoryName: map['repositoryName'] == null ? null : pulumi.Output.create<String>(map['repositoryName'] as String),
      repositoryUri: map['repositoryUri'] == null ? null : pulumi.Output.create<String>(map['repositoryUri'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

