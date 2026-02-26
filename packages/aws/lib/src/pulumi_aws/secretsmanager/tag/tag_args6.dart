// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Tag.
class TagArgs6 {
  /// Tag name.
  final Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ID of the AWS Secrets Manager secret to tag.
  final Input<String> secretId;

  /// Tag value.
  final Input<String> value;

  TagArgs6({
    required this.key,
    this.region,
    required this.secretId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['secretId'] = secretId;
    map['value'] = value;
    return map;
  }

  factory TagArgs6.fromMap(Map<String, dynamic> map) {
    return TagArgs6(
      key: Input.asInput<String>(map['key']),
      region: Input.asOptionalInput<String>(map['region']),
      secretId: Input.asInput<String>(map['secretId']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
