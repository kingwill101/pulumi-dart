// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_function_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_function_get_function_args_doc}
class GetFunctionArgs {
  /// Name of the CloudFront function.
  final pulumi.Input<String> name;
  /// Function’s stage, either `DEVELOPMENT` or `LIVE`.
  final pulumi.Input<String> stage;

  /// Creates a new [GetFunctionArgs].
  /// [name] Name of the CloudFront function.
  /// [stage] Function’s stage, either `DEVELOPMENT` or `LIVE`.
  const GetFunctionArgs({
    required this.name,
    required this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'stage': stage,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      stage: pulumi.Input.fromValue(map['stage'] as String),
    );
  }
}

