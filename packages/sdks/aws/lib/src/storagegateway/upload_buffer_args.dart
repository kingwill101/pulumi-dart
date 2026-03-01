// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storagegateway_upload_buffer_upload_buffer_args_doc}
/// The set of arguments for UploadBuffer.
/// {@endtemplate}
/// {@macro pulumi_storagegateway_upload_buffer_upload_buffer_args_doc}
class UploadBufferArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String>? diskId;
  /// Local disk path. For example, `/dev/nvme1n1`.
  final pulumi.Input<String>? diskPath;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [UploadBufferArgs].
  /// [diskId] Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  /// [diskPath] Local disk path. For example, `/dev/nvme1n1`.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  UploadBufferArgs({
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? diskPath,
    required pulumi.Output<String> gatewayArn,
    pulumi.Output<String>? region,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      diskPath = pulumi.Input.asOptionalInput<String>(diskPath),
      gatewayArn = pulumi.Input.asInput<String>(gatewayArn),
      region = pulumi.Input.asOptionalInput<String>(region);

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
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      diskPath: map['diskPath'] == null ? null : pulumi.Output.create<String>(map['diskPath'] as String),
      gatewayArn: pulumi.Output.create<String>(map['gatewayArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

