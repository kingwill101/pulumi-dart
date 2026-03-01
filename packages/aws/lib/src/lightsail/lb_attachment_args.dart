// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_lb_attachment_lb_attachment_args_doc}
/// The set of arguments for LbAttachment.
/// {@endtemplate}
/// {@macro pulumi_lightsail_lb_attachment_lb_attachment_args_doc}
class LbAttachmentArgs {
  /// Name of the instance to attach to the load balancer.
  final pulumi.Input<String> instanceName;
  /// Name of the Lightsail load balancer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> lbName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [LbAttachmentArgs].
  /// [instanceName] Name of the instance to attach to the load balancer.
  /// [lbName] Name of the Lightsail load balancer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  LbAttachmentArgs({
    required String instanceName,
    required String lbName,
    String? region,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      lbName = pulumi.Input.asInput<String>(lbName),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'lbName': lbName,
      'region': ?region,
    };
  }

  factory LbAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return LbAttachmentArgs(
      instanceName: map['instanceName'] as String,
      lbName: map['lbName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

