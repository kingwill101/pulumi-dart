// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StaticIpAttachment resources.
class StaticIpAttachmentState {
  /// Name of the Lightsail instance to attach the IP to.
  final pulumi.Input<String>? instanceName;
  /// Allocated static IP address.
  final pulumi.Input<String>? ipAddress;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? staticIpName;

  /// Creates a new [StaticIpAttachmentState].
  /// [instanceName] Name of the Lightsail instance to attach the IP to.
  /// [ipAddress] Allocated static IP address.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [staticIpName] Name of the allocated static IP.
  StaticIpAttachmentState({
    pulumi.Output<String>? instanceName,
    pulumi.Output<String>? ipAddress,
    pulumi.Output<String>? region,
    pulumi.Output<String>? staticIpName,
  }) :
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
      region = pulumi.Input.asOptionalInput<String>(region),
      staticIpName = pulumi.Input.asOptionalInput<String>(staticIpName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': ?instanceName,
      'ipAddress': ?ipAddress,
      'region': ?region,
      'staticIpName': ?staticIpName,
    };
  }

  factory StaticIpAttachmentState.fromMap(Map<String, dynamic> map) {
    return StaticIpAttachmentState(
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      ipAddress: map['ipAddress'] == null ? null : pulumi.Output.create<String>(map['ipAddress'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      staticIpName: map['staticIpName'] == null ? null : pulumi.Output.create<String>(map['staticIpName'] as String),
    );
  }
}

