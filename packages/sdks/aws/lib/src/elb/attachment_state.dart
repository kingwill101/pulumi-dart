// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Attachment resources.
class AttachmentState {
  /// The name of the ELB.
  final pulumi.Input<String?>? elb;
  /// Instance ID to place in the ELB pool.
  final pulumi.Input<String?>? instance;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [AttachmentState].
  /// [elb] The name of the ELB.
  /// [instance] Instance ID to place in the ELB pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const AttachmentState({
    this.elb,
    this.instance,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elb': ?elb,
      'instance': ?instance,
      'region': ?region,
    };
  }

  factory AttachmentState.fromMap(Map<String, dynamic> map) {
    return AttachmentState(
      elb: (() { final guardedValue = map['elb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
