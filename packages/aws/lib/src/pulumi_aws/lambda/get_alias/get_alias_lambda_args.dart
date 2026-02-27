// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAlias.
class GetAliasLambdaArgs {
  /// Name of the aliased Lambda function.
  final pulumi.Input<String> functionName;

  /// Name of the Lambda alias.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetAliasLambdaArgs({
    required this.functionName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['functionName'] = functionName;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetAliasLambdaArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasLambdaArgs(
      functionName: pulumi.Input.asInput<String>(map['functionName']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
