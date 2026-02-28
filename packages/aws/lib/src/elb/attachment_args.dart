// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_elb_attachment_attachment_args_doc}
/// The set of arguments for Attachment.
/// {@endtemplate}
/// {@macro pulumi_elb_attachment_attachment_args_doc}
class AttachmentArgs {
  /// The name of the ELB.
  final pulumi.Input<String> elb;

  /// Instance ID to place in the ELB pool.
  final pulumi.Input<String> instance;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [AttachmentArgs].
  /// [elb] The name of the ELB.
  /// [instance] Instance ID to place in the ELB pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  AttachmentArgs({
    required String elb,
    required String instance,
    String? region,
  })  : elb = pulumi.Input.asInput<String>(elb),
        instance = pulumi.Input.asInput<String>(instance),
        region = pulumi.Input.asOptionalInput<String>(region);

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

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      elb: map['elb'] as String,
      instance: map['instance'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
