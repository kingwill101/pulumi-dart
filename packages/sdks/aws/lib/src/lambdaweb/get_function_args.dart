// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambdaweb_get_function_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_lambdaweb_get_function_get_function_args_doc}
class GetFunctionArgs {
  /// Name of the function.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> functionName;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetFunctionArgs].
  /// [functionName] Name of the function.
  /// [region] Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  const GetFunctionArgs({
    required this.functionName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'region': ?region,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
