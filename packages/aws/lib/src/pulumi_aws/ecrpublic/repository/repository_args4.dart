// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../repository_catalog_data/repository_catalog_data.dart';

/// The set of arguments for Repository.
class RepositoryArgs4 {
  /// Catalog data configuration for the repository. See below for schema.
  final Input<RepositoryCatalogData>? catalogData;
  final Input<bool>? forceDestroy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the repository.
  final Input<String> repositoryName;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  RepositoryArgs4({
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
      map['catalogData'] = Input.mapOptionalInputValue<RepositoryCatalogData,
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

  factory RepositoryArgs4.fromMap(Map<String, dynamic> map) {
    return RepositoryArgs4(
      catalogData:
          Input.asOptionalInput<RepositoryCatalogData>(map['catalogData']),
      forceDestroy: Input.asOptionalInput<bool>(map['forceDestroy']),
      region: Input.asOptionalInput<String>(map['region']),
      repositoryName: Input.asInput<String>(map['repositoryName']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
