// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LfTag.
class LfTagArgs {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  final Input<String>? catalogId;

  /// Key-name for the tag.
  final Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of possible values an attribute can take.
  final Input<List<String>> values;

  LfTagArgs({
    this.catalogId,
    required this.key,
    this.region,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['values'] = values;
    return map;
  }

  factory LfTagArgs.fromMap(Map<String, dynamic> map) {
    return LfTagArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      key: Input.asInput<String>(map['key']),
      region: Input.asOptionalInput<String>(map['region']),
      values: Input.asInput<List<String>>(map['values']),
    );
  }
}
