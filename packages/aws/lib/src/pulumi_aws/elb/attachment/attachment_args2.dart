// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Attachment.
class AttachmentArgs2 {
  /// The name of the ELB.
  final Input<String> elb;

  /// Instance ID to place in the ELB pool.
  final Input<String> instance;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  AttachmentArgs2({
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

  factory AttachmentArgs2.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs2(
      elb: Input.asInput<String>(map['elb']),
      instance: Input.asInput<String>(map['instance']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
