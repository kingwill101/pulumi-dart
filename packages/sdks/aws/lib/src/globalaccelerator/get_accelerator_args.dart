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
  /// &gt; **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;

  /// Creates a new [GetAcceleratorArgs].
  /// [arn] Full ARN of the Global Accelerator.
  /// [name] Unique name of the Global Accelerator.
  GetAcceleratorArgs({this.arn, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'name': ?name};
  }

  factory GetAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetAcceleratorArgs(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
