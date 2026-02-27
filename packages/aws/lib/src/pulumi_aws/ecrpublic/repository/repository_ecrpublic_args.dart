// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_catalog_data/repository_catalog_data.dart';

/// The set of arguments for Repository.
class RepositoryEcrpublicArgs {
  /// Catalog data configuration for the repository. See below for schema.
  final pulumi.Input<RepositoryCatalogData>? catalogData;
  final pulumi.Input<bool>? forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Name of the repository.
  final pulumi.Input<String> repositoryName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  RepositoryEcrpublicArgs({
    this.catalogData,
    this.forceDestroy,
    this.region,
    required this.repositoryName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogDataValue = catalogData;
    if (catalogDataValue != null) {
      map['catalogData'] = pulumi.Input.mapOptionalInputValue<
          RepositoryCatalogData,
          Map<String, dynamic>>(catalogDataValue, (value) => value.toMap());
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
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

  factory RepositoryEcrpublicArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryEcrpublicArgs(
      catalogData: pulumi.Input.asOptionalInput<RepositoryCatalogData>(
          map['catalogData']),
      forceDestroy: pulumi.Input.asOptionalInput<bool>(map['forceDestroy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositoryName: pulumi.Input.asInput<String>(map['repositoryName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
