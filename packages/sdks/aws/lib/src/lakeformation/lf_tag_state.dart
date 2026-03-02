// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LfTag resources.
class LfTagState {
  /// ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// Key-name for the tag.
  final pulumi.Input<String>? key;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of possible values an attribute can take.
  final pulumi.Input<List<String>>? values;

  /// Creates a new [LfTagState].
  /// [catalogId] ID of the Data Catalog to create the tag in. If omitted, this defaults to the AWS Account ID.
  /// [key] Key-name for the tag.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [values] List of possible values an attribute can take.
  LfTagState({
    this.catalogId,
    this.key,
    this.region,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'key': ?key,
      'region': ?region,
      'values': ?values,
    };
  }

  factory LfTagState.fromMap(Map<String, dynamic> map) {
    return LfTagState(
      catalogId: map['catalogId'] == null ? null : ((map['catalogId'] as String).input()).input(),
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      values: map['values'] == null ? null : (((map['values'] as List).cast<String>()).input()).input(),
    );
  }
}

