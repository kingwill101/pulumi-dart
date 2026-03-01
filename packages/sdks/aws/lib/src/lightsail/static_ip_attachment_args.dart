// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lightsail_static_ip_attachment_static_ip_attachment_args_doc}
/// The set of arguments for StaticIpAttachment.
/// {@endtemplate}
/// {@macro pulumi_lightsail_static_ip_attachment_static_ip_attachment_args_doc}
class StaticIpAttachmentArgs {
  /// Name of the Lightsail instance to attach the IP to.
  final pulumi.Input<String> instanceName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> staticIpName;

  /// Creates a new [StaticIpAttachmentArgs].
  /// [instanceName] Name of the Lightsail instance to attach the IP to.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticIpName] Name of the allocated static IP.
  StaticIpAttachmentArgs({
    required pulumi.Output<String> instanceName,
    pulumi.Output<String>? region,
    required pulumi.Output<String> staticIpName,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      region = pulumi.Input.asOptionalInput<String>(region),
      staticIpName = pulumi.Input.asInput<String>(staticIpName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'region': ?region,
      'staticIpName': staticIpName,
    };
  }

  factory StaticIpAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return StaticIpAttachmentArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      staticIpName: pulumi.Output.create<String>(map['staticIpName'] as String),
    );
  }
}

