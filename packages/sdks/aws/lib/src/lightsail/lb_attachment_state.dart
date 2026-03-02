// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LbAttachment resources.
class LbAttachmentState {
  /// Name of the instance to attach to the load balancer.
  final pulumi.Input<String>? instanceName;
  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbAttachmentState].
  /// [instanceName] Name of the instance to attach to the load balancer.
  /// [lbName] Name of the Lightsail load balancer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbAttachmentState({
    this.instanceName,
    this.lbName,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'lbName': ?lbName,
      'region': ?region,
    };
  }

  factory LbAttachmentState.fromMap(Map<String, dynamic> map) {
    return LbAttachmentState(
      instanceName: map['instanceName'] == null ? null : (map['instanceName'] as String).input(),
      lbName: map['lbName'] == null ? null : (map['lbName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

