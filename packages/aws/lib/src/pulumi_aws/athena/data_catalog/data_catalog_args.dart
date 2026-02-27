// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DataCatalog.
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

  DataCatalogArgs({
    required this.description,
    this.name,
    required this.parameters,
    this.region,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parameters'] = parameters;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    return map;
  }

  factory DataCatalogArgs.fromMap(Map<String, dynamic> map) {
    return DataCatalogArgs(
      description: pulumi.Input.asInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters: pulumi.Input.asInput<Map<String, String>>(map['parameters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
