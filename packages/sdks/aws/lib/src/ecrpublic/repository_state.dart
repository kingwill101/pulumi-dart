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
    this.arn,
    this.catalogData,
    this.forceDestroy,
    this.region,
    this.registryId,
    this.repositoryName,
    this.repositoryUri,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      catalogData: map['catalogData'] == null ? null : (RepositoryCatalogData.fromMap((map['catalogData'] as Map).cast<String, dynamic>())).input(),
      forceDestroy: map['forceDestroy'] == null ? null : (map['forceDestroy'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      registryId: map['registryId'] == null ? null : (map['registryId'] as String).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
      repositoryUri: map['repositoryUri'] == null ? null : (map['repositoryUri'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

