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
    pulumi.Output<String>? catalogId,
    pulumi.Output<String>? key,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? values,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      key = pulumi.Input.asOptionalInput<String>(key),
      region = pulumi.Input.asOptionalInput<String>(region),
      values = pulumi.Input.asOptionalInput<List<String>>(values);

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
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      values: map['values'] == null ? null : pulumi.Output.create<List<String>>((map['values'] as List).cast<String>()),
    );
  }
}

