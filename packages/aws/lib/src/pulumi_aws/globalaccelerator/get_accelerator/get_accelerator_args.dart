// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAccelerator.
class GetAcceleratorArgs {
  /// Full ARN of the Global Accelerator.
  final pulumi.Input<String>? arn;

  /// Unique name of the Global Accelerator.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;

  GetAcceleratorArgs({
    this.arn,
    this.name,
  });

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
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
    );
  }
}
