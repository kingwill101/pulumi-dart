// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCustomRoutingAccelerator.
class GetCustomRoutingAcceleratorArgs {
  /// Full ARN of the custom routing accelerator.
  final pulumi.Input<String>? arn;

  /// Unique name of the custom routing accelerator.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, String>>? tags;

  GetCustomRoutingAcceleratorArgs({
    this.arn,
    this.name,
    this.tags,
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
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetCustomRoutingAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorArgs(
      arn: pulumi.Input.asOptionalInput<String>(map['arn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
