// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLocalDisk.
class GetLocalDiskArgs {
  /// Device node of the local disk to retrieve. For example, `/dev/sdb`.
  final Input<String>? diskNode;

  /// Device path of the local disk to retrieve. For example, `/dev/xvdb` or `/dev/nvme1n1`.
  final Input<String>? diskPath;

  /// ARN of the gateway.
  final Input<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetLocalDiskArgs({
    this.diskNode,
    this.diskPath,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskNodeValue = diskNode;
    if (diskNodeValue != null) {
      map['diskNode'] = diskNodeValue;
    }
    final diskPathValue = diskPath;
    if (diskPathValue != null) {
      map['diskPath'] = diskPathValue;
    }
    map['gatewayArn'] = gatewayArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetLocalDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalDiskArgs(
      diskNode: Input.asOptionalInput<String>(map['diskNode']),
      diskPath: Input.asOptionalInput<String>(map['diskPath']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
