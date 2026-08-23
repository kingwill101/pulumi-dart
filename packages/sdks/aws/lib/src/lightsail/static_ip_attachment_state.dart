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
  const StaticIpAttachmentState({
    this.instanceName,
    this.ipAddress,
    this.region,
    this.staticIpName,
  });

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
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staticIpName: (() { final guardedValue = map['staticIpName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
