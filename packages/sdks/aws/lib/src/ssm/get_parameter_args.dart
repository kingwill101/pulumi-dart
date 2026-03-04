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
  GetParameterArgs({required this.name, this.region, this.withDecryption});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'withDecryption': ?withDecryption,
    };
  }

  factory GetParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      withDecryption: (() {
        final guardedValue = map['withDecryption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
