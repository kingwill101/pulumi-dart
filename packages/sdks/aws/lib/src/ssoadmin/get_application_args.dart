// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssoadmin_get_application_get_application_args_doc}
/// Arguments for getApplication.
/// {@endtemplate}
/// {@macro pulumi_ssoadmin_get_application_get_application_args_doc}
class GetApplicationArgs {
  /// ARN of the application.
  final pulumi.Input<String> applicationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetApplicationArgs].
  /// [applicationArn] ARN of the application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetApplicationArgs({
    required pulumi.Output<String> applicationArn,
    pulumi.Output<String>? region,
  }) :
      applicationArn = pulumi.Input.asInput<String>(applicationArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
      'region': ?region,
    };
  }

  factory GetApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationArgs(
      applicationArn: pulumi.Output.create<String>(map['applicationArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

