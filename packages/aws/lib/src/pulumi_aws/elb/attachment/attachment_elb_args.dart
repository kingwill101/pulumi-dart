// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Attachment.
class AttachmentElbArgs {
  /// The name of the ELB.
  final pulumi.Input<String> elb;

  /// Instance ID to place in the ELB pool.
  final pulumi.Input<String> instance;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  AttachmentElbArgs({
    required this.elb,
    required this.instance,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['elb'] = elb;
    map['instance'] = instance;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AttachmentElbArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentElbArgs(
      elb: pulumi.Input.asInput<String>(map['elb']),
      instance: pulumi.Input.asInput<String>(map['instance']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
