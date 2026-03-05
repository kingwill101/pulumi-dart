// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_lf_tag_lf_tag_args_doc}
/// The set of arguments for LfTag.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_lf_tag_lf_tag_args_doc}
class LfTagArgs {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// Key-name for the tag.
  final pulumi.Input<String> key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of possible values an attribute can take.
  final pulumi.Input<List<String>> values;

  /// Creates a new [LfTagArgs].
  /// [catalogId] ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  /// [key] Key-name for the tag.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [values] List of possible values an attribute can take.
  LfTagArgs({
    this.catalogId,
    required this.key,
    this.region,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'key': key,
      'region': ?region,
      'values': values,
    };
  }

  factory LfTagArgs.fromMap(Map<String, dynamic> map) {
    return LfTagArgs(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

