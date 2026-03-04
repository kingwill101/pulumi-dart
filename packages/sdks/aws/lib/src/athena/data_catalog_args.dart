// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_athena_data_catalog_data_catalog_args_doc}
/// The set of arguments for DataCatalog.
/// {@endtemplate}
/// {@macro pulumi_athena_data_catalog_data_catalog_args_doc}
class DataCatalogArgs {
  /// Description of the data catalog.
  final pulumi.Input<String> description;

  /// Name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
  final pulumi.Input<String>? name;

  /// Key value pairs that specifies the Lambda function or functions to use for the data catalog. The mapping used depends on the catalog type.
  final pulumi.Input<Map<String, String>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Type of data catalog: `LAMBDA` for a federated catalog, `GLUE` for AWS Glue Catalog, or `HIVE` for an external hive metastore.
  final pulumi.Input<String> type;

  /// Creates a new [DataCatalogArgs].
  /// [description] Description of the data catalog.
  /// [name] Name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
  /// [parameters] Key value pairs that specifies the Lambda function or functions to use for the data catalog. The mapping used depends on the catalog type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] Type of data catalog: `LAMBDA` for a federated catalog, `GLUE` for AWS Glue Catalog, or `HIVE` for an external hive metastore.
  DataCatalogArgs({
    required this.description,
    this.name,
    required this.parameters,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'name': ?name,
      'parameters': parameters,
      'region': ?region,
      'tags': ?tags,
      'type': type,
    };
  }

  factory DataCatalogArgs.fromMap(Map<String, dynamic> map) {
    return DataCatalogArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: pulumi.Input.fromValue(
        (map['parameters'] as Map).cast<String, String>(),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
