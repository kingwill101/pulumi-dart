// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DataSet.
class DataSetArgs {
  /// The type of asset that is added to a data set. Valid values include `API_GATEWAY_API`, `LAKE_FORMATION_DATA_PERMISSION`, `REDSHIFT_DATA_SHARE`, `S3_DATA_ACCESS`, `S3_SNAPSHOT`.
  final pulumi.Input<String> assetType;

  /// A description for the data set.
  final pulumi.Input<String> description;

  /// The name of the data set.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  DataSetArgs({
    required this.assetType,
    required this.description,
    this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetType'] = assetType;
    map['description'] = description;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DataSetArgs.fromMap(Map<String, dynamic> map) {
    return DataSetArgs(
      assetType: pulumi.Input.asInput<String>(map['assetType']),
      description: pulumi.Input.asInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
