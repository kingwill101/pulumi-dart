// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssm_get_parameter_get_parameter_args_doc}
/// Arguments for getParameter.
/// {@endtemplate}
/// {@macro pulumi_ssm_get_parameter_get_parameter_args_doc}
class GetParameterArgs {
  /// Name of the parameter. To query by parameter version use `name:version` (e.g., `foo:3`).
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Whether to return decrypted `SecureString` value. Defaults to `true`.
  final pulumi.Input<bool>? withDecryption;

  /// Creates a new [GetParameterArgs].
  /// [name] Name of the parameter. To query by parameter version use `name:version` (e.g., `foo:3`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [withDecryption] Whether to return decrypted `SecureString` value. Defaults to `true`.
  GetParameterArgs({
    required String name,
    String? region,
    bool? withDecryption,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        withDecryption = pulumi.Input.asOptionalInput<bool>(withDecryption);

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
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      withDecryption:
          map['withDecryption'] == null ? null : map['withDecryption'] as bool,
    );
  }
}
