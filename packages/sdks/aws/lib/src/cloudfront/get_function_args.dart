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
  GetFunctionArgs({
    required pulumi.Output<String> name,
    required pulumi.Output<String> stage,
  }) :
      name = pulumi.Input.asInput<String>(name),
      stage = pulumi.Input.asInput<String>(stage);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'stage': stage,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      stage: pulumi.Output.create<String>(map['stage'] as String),
    );
  }
}

