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
  LfTagState({this.catalogId, this.key, this.region, this.values});

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
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      values: (() {
        final guardedValue = map['values'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
