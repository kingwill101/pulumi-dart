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
  final pulumi.Input<String?>? region;
  /// Type of control. Valid values are `Custom` and `Standard`.
  final pulumi.Input<String> type;

  /// Creates a new [GetControlArgs].
  /// [name] Name of the control.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of control. Valid values are `Custom` and `Standard`.
  const GetControlArgs({
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
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
