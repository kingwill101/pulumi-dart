// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for StaticIpAttachment.
class StaticIpAttachmentArgs {
  /// Name of the Lightsail instance to attach the IP to.
  final Input<String> instanceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the allocated static IP.
  ///
  /// The following arguments are optional:
  final Input<String> staticIpName;

  StaticIpAttachmentArgs({
    required this.instanceName,
    this.region,
    required this.staticIpName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceName'] = instanceName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['staticIpName'] = staticIpName;
    return map;
  }

  factory StaticIpAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return StaticIpAttachmentArgs(
      instanceName: Input.asInput<String>(map['instanceName']),
      region: Input.asOptionalInput<String>(map['region']),
      staticIpName: Input.asInput<String>(map['staticIpName']),
    );
  }
}
