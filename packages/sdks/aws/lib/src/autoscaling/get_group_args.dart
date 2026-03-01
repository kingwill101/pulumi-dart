// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_autoscaling_get_group_get_group_args_doc}
/// Arguments for getGroup.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_get_group_get_group_args_doc}
class GetGroupArgs {
  /// Specify the exact name of the desired autoscaling group.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetGroupArgs].
  /// [name] Specify the exact name of the desired autoscaling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetGroupArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
    };
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

