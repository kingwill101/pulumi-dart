// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_get_local_disk_get_local_disk_args_doc}
/// Arguments for getLocalDisk.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_get_local_disk_get_local_disk_args_doc}
class GetLocalDiskArgs {
  /// Device node of the local disk to retrieve. For example, `/dev/sdb`.
  final pulumi.Input<String>? diskNode;
  /// Device path of the local disk to retrieve. For example, `/dev/xvdb` or `/dev/nvme1n1`.
  final pulumi.Input<String>? diskPath;
  /// ARN of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetLocalDiskArgs].
  /// [diskNode] Device node of the local disk to retrieve. For example, `/dev/sdb`.
  /// [diskPath] Device path of the local disk to retrieve. For example, `/dev/xvdb` or `/dev/nvme1n1`.
  /// [gatewayArn] ARN of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetLocalDiskArgs({
    this.diskNode,
    this.diskPath,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskNode': ?diskNode,
      'diskPath': ?diskPath,
      'gatewayArn': gatewayArn,
      'region': ?region,
    };
  }

  factory GetLocalDiskArgs.fromMap(Map<String, dynamic> map) {
    return GetLocalDiskArgs(
      diskNode: (() { final guardedValue = map['diskNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskPath: (() { final guardedValue = map['diskPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

