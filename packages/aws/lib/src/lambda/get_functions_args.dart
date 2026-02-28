// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_functions_get_functions_args_doc}
/// Arguments for getFunctions.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_functions_get_functions_args_doc}
class GetFunctionsArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFunctionsArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetFunctionsArgs({
    String? region,
  }) : region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetFunctionsArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionsArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
