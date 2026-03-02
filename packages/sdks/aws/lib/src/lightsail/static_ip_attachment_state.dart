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
      instanceName: map['instanceName'] == null ? null : ((map['instanceName'] as String).input()).input(),
      ipAddress: map['ipAddress'] == null ? null : ((map['ipAddress'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      staticIpName: map['staticIpName'] == null ? null : ((map['staticIpName'] as String).input()).input(),
    );
  }
}

