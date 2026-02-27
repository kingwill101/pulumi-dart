// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Cache.
class CacheArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  CacheArgs({
    required this.diskId,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskId'] = diskId;
    map['gatewayArn'] = gatewayArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory CacheArgs.fromMap(Map<String, dynamic> map) {
    return CacheArgs(
      diskId: pulumi.Input.asInput<String>(map['diskId']),
      gatewayArn: pulumi.Input.asInput<String>(map['gatewayArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
