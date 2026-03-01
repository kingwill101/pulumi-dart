// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lakeformation_get_resource_get_resource_args_doc}
/// Arguments for getResource.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_get_resource_get_resource_args_doc}
class GetResourceArgs {
  /// ARN of the resource, an S3 path.
  final pulumi.Input<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetResourceArgs].
  /// [arn] ARN of the resource, an S3 path.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetResourceArgs({required String arn, String? region})
    : arn = pulumi.Input.asInput<String>(arn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': arn, 'region': ?region};
  }

  factory GetResourceArgs.fromMap(Map<String, dynamic> map) {
    return GetResourceArgs(
      arn: map['arn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
