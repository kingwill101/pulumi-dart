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
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? lbName,
    pulumi.Output<String>? region,
  }) :
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      lbName = pulumi.Input.asOptionalInput<String>(lbName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'lbName': ?lbName,
      'region': ?region,
    };
  }

  factory LbAttachmentState.fromMap(Map<String, dynamic> map) {
    return LbAttachmentState(
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      lbName: map['lbName'] == null ? null : pulumi.Output.create<String>(map['lbName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

