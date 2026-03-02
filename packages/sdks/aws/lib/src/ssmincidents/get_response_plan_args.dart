// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssmincidents_get_response_plan_get_response_plan_args_doc}
/// Arguments for getResponsePlan.
/// {@endtemplate}
/// {@macro pulumi_ssmincidents_get_response_plan_get_response_plan_args_doc}
class GetResponsePlanArgs {
  /// The Amazon Resource Name (ARN) of the response plan.
  final pulumi.Input<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The tags applied to the response plan.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetResponsePlanArgs].
  /// [arn] The Amazon Resource Name (ARN) of the response plan.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] The tags applied to the response plan.
  GetResponsePlanArgs({
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
      arn: (map['arn'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

