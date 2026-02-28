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
    required String name,
    String? region,
  })  : name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGroupArgs(
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
