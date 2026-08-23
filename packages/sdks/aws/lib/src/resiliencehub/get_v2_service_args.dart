// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resiliencehub_get_v2_service_get_v2_service_args_doc}
/// Arguments for getV2Service.
/// {@endtemplate}
/// {@macro pulumi_resiliencehub_get_v2_service_get_v2_service_args_doc}
class GetV2ServiceArgs {
  /// ARN of the service.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetV2ServiceArgs].
  /// [arn] ARN of the service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetV2ServiceArgs({
    required this.arn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
    };
  }

  factory GetV2ServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetV2ServiceArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
