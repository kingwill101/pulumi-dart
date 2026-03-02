// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_auditmanager_get_control_get_control_args_doc}
/// Arguments for getControl.
/// {@endtemplate}
/// {@macro pulumi_auditmanager_get_control_get_control_args_doc}
class GetControlArgs {
  /// Name of the control.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of control. Valid values are `Custom` and `Standard`.
  final pulumi.Input<String> type;

  /// Creates a new [GetControlArgs].
  /// [name] Name of the control.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of control. Valid values are `Custom` and `Standard`.
  GetControlArgs({
    required this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': ?region,
      'type': type,
    };
  }

  factory GetControlArgs.fromMap(Map<String, dynamic> map) {
    return GetControlArgs(
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

