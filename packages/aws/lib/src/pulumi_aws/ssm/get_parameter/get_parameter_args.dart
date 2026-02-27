// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getParameter.
class GetParameterArgs {
  /// Name of the parameter. To query by parameter version use `name:version` (e.g., `foo:3`).
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to return decrypted `SecureString` value. Defaults to `true`.
  final pulumi.Input<bool>? withDecryption;

  GetParameterArgs({
    required this.name,
    this.region,
    this.withDecryption,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final withDecryptionValue = withDecryption;
    if (withDecryptionValue != null) {
      map['withDecryption'] = withDecryptionValue;
    }
    return map;
  }

  factory GetParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      withDecryption: pulumi.Input.asOptionalInput<bool>(map['withDecryption']),
    );
  }
}
