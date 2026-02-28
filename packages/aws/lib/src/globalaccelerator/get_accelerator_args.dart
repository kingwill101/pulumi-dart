// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_globalaccelerator_get_accelerator_get_accelerator_args_doc}
/// Arguments for getAccelerator.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_get_accelerator_get_accelerator_args_doc}
class GetAcceleratorArgs {
  /// Full ARN of the Global Accelerator.
  final pulumi.Input<String>? arn;

  /// Unique name of the Global Accelerator.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;

  /// Creates a new [GetAcceleratorArgs].
  /// [arn] Full ARN of the Global Accelerator.
  /// [name] Unique name of the Global Accelerator.
  GetAcceleratorArgs({
    String? arn,
    String? name,
  })  : arn = pulumi.Input.asOptionalInput<String>(arn),
        name = pulumi.Input.asOptionalInput<String>(name);

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
    return map;
  }

  factory GetAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
