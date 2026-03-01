// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_working_storage_working_storage_args_doc}
/// The set of arguments for WorkingStorage.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_working_storage_working_storage_args_doc}
class WorkingStorageArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String> diskId;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [WorkingStorageArgs].
  /// [diskId] Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  WorkingStorageArgs({
    required pulumi.Output<String> diskId,
    required pulumi.Output<String> gatewayArn,
    pulumi.Output<String>? region,
  }) :
      diskId = pulumi.Input.asInput<String>(diskId),
      gatewayArn = pulumi.Input.asInput<String>(gatewayArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': diskId,
      'gatewayArn': gatewayArn,
      'region': ?region,
    };
  }

  factory WorkingStorageArgs.fromMap(Map<String, dynamic> map) {
    return WorkingStorageArgs(
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
      gatewayArn: pulumi.Output.create<String>(map['gatewayArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

