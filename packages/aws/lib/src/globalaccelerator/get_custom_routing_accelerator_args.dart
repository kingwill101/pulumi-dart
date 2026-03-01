// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_globalaccelerator_get_custom_routing_accelerator_get_custom_routing_accelerator_args_doc}
/// Arguments for getCustomRoutingAccelerator.
/// {@endtemplate}
/// {@macro pulumi_globalaccelerator_get_custom_routing_accelerator_get_custom_routing_accelerator_args_doc}
class GetCustomRoutingAcceleratorArgs {
  /// Full ARN of the custom routing accelerator.
  final pulumi.Input<String>? arn;

  /// Unique name of the custom routing accelerator.
  ///
  /// > **NOTE:** When both `arn` and `name` are specified, `arn` takes precedence.
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetCustomRoutingAcceleratorArgs].
  /// [arn] Full ARN of the custom routing accelerator.
  /// [name] Unique name of the custom routing accelerator.
  /// [tags] Optional.
  GetCustomRoutingAcceleratorArgs({
    String? arn,
    String? name,
    Map<String, String>? tags,
  }) : arn = pulumi.Input.asOptionalInput<String>(arn),
       name = pulumi.Input.asOptionalInput<String>(name),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'arn': ?arn, 'name': ?name, 'tags': ?tags};
  }

  factory GetCustomRoutingAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomRoutingAcceleratorArgs(
      arn: map['arn'] == null ? null : map['arn'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
