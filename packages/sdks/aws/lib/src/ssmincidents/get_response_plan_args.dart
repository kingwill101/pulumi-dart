// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmincidents_get_response_plan_get_response_plan_args_doc}
/// Arguments for getResponsePlan.
/// {@endtemplate}
/// {@macro pulumi_ssmincidents_get_response_plan_get_response_plan_args_doc}
class GetResponsePlanArgs {
  /// ARN of the response plan.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The tags applied to the response plan.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetResponsePlanArgs].
  /// [arn] ARN of the response plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags applied to the response plan.
  const GetResponsePlanArgs({
    required this.arn,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetResponsePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetResponsePlanArgs(
      arn: pulumi.Input.fromValue(map['arn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
