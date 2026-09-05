// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_upload_buffer_upload_buffer_args_doc}
/// The set of arguments for UploadBuffer.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_upload_buffer_upload_buffer_args_doc}
class UploadBufferArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String?>? diskId;
  /// Local disk path. For example, `/dev/nvme1n1`.
  final pulumi.Input<String?>? diskPath;
  /// ARN of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [UploadBufferArgs].
  /// [diskId] Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  /// [diskPath] Local disk path. For example, `/dev/nvme1n1`.
  /// [gatewayArn] ARN of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const UploadBufferArgs({
    this.diskId,
    this.diskPath,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'diskPath': ?diskPath,
      'gatewayArn': gatewayArn,
      'region': ?region,
    };
  }

  factory UploadBufferArgs.fromMap(Map<String, dynamic> map) {
    return UploadBufferArgs(
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskPath: (() { final guardedValue = map['diskPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayArn: pulumi.Input.fromValue(map['gatewayArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
