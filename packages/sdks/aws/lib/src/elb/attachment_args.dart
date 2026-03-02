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
    required this.elb,
    required this.instance,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elb': elb,
      'instance': instance,
      'region': ?region,
    };
  }

  factory AttachmentArgs.fromMap(Map<String, dynamic> map) {
    return AttachmentArgs(
      elb: (map['elb'] as String).input(),
      instance: (map['instance'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

