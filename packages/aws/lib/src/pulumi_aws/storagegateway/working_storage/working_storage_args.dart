// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WorkingStorage.
class WorkingStorageArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final Input<String> diskId;

  /// The Amazon Resource Name (ARN) of the gateway.
  final Input<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  WorkingStorageArgs({
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

  factory WorkingStorageArgs.fromMap(Map<String, dynamic> map) {
    return WorkingStorageArgs(
      diskId: Input.asInput<String>(map['diskId']),
      gatewayArn: Input.asInput<String>(map['gatewayArn']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
