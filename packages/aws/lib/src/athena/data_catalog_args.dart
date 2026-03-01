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
    required String description,
    String? name,
    required Map<String, String> parameters,
    String? region,
    Map<String, String>? tags,
    required String type,
  }) :
      description = pulumi.Input.asInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asInput<String>(type);

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
      description: map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

