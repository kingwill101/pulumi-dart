// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Tag.
class TagSecretsmanagerArgs {
  /// Tag name.
  final pulumi.Input<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ID of the AWS Secrets Manager secret to tag.
  final pulumi.Input<String> secretId;

  /// Tag value.
  final pulumi.Input<String> value;

  TagSecretsmanagerArgs({
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

  factory TagSecretsmanagerArgs.fromMap(Map<String, dynamic> map) {
    return TagSecretsmanagerArgs(
      key: pulumi.Input.asInput<String>(map['key']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      secretId: pulumi.Input.asInput<String>(map['secretId']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
