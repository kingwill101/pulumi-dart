// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for LbAttachment.
class LbAttachmentArgs {
  /// Name of the instance to attach to the load balancer.
  final pulumi.Input<String> instanceName;

  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  LbAttachmentArgs({
    required this.instanceName,
    required this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceName'] = instanceName;
    map['lbName'] = lbName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LbAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LbAttachmentArgs(
      instanceName: pulumi.Input.asInput<String>(map['instanceName']),
      lbName: pulumi.Input.asInput<String>(map['lbName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
