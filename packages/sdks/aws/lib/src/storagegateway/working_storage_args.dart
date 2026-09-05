// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_working_storage_working_storage_args_doc}
/// The set of arguments for WorkingStorage.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_working_storage_working_storage_args_doc}
class WorkingStorageArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String> diskId;
  /// ARN of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [WorkingStorageArgs].
  /// [diskId] Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  /// [gatewayArn] ARN of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const WorkingStorageArgs({
    required this.diskId,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'gatewayArn': gatewayArn,
      'region': ?region,
    };
  }

  factory WorkingStorageArgs.fromMap(Map<String, dynamic> map) {
    return WorkingStorageArgs(
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
