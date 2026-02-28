// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sfn_get_activity_get_activity_args_doc}
/// Arguments for getActivity.
/// {@endtemplate}
/// {@macro pulumi_sfn_get_activity_get_activity_args_doc}
class GetActivityArgs {
  /// ARN that identifies the activity.
  final pulumi.Input<String>? arn;

  /// Name that identifies the activity.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetActivityArgs].
  /// [arn] ARN that identifies the activity.
  /// [name] Name that identifies the activity.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetActivityArgs({
    String? arn,
    String? name,
    String? region,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final arnValue = arn;
    if (arnValue != null) {
      map['arn'] = arnValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetActivityArgs.fromMap(Map<String, dynamic> map) {
    return GetActivityArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
