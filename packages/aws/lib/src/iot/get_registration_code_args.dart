// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iot_get_registration_code_get_registration_code_args_doc}
/// Arguments for getRegistrationCode.
/// {@endtemplate}
/// {@macro pulumi_iot_get_registration_code_get_registration_code_args_doc}
class GetRegistrationCodeArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetRegistrationCodeArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetRegistrationCodeArgs({
    String? region,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
    };
  }

  factory GetRegistrationCodeArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationCodeArgs(
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

