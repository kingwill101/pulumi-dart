// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lambda_get_code_signing_config_get_code_signing_config_args_doc}
/// Arguments for getCodeSigningConfig.
/// {@endtemplate}
/// {@macro pulumi_lambda_get_code_signing_config_get_code_signing_config_args_doc}
class GetCodeSigningConfigArgs {
  /// ARN of the code signing configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetCodeSigningConfigArgs].
  /// [arn] ARN of the code signing configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetCodeSigningConfigArgs({required String arn, String? region})
    : arn = pulumi.Input.asInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': ?region};
  }

  factory GetCodeSigningConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetCodeSigningConfigArgs(
      arn: map['arn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
