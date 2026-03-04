// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_alias_get_alias_args_doc}
/// Arguments for getAlias.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_alias_get_alias_args_doc}
class GetAliasArgs {
  /// Name of the aliased Lambda function.
  final pulumi.Input<String> functionName;

  /// Name of the Lambda alias.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAliasArgs].
  /// [functionName] Name of the aliased Lambda function.
  /// [name] Name of the Lambda alias.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAliasArgs({required this.functionName, required this.name, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'name': name,
      'region': ?region,
    };
  }

  factory GetAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
