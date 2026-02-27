// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UploadBuffer.
class UploadBufferArgs {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String>? diskId;

  /// Local disk path. For example, `/dev/nvme1n1`.
  final pulumi.Input<String>? diskPath;

  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String> gatewayArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  UploadBufferArgs({
    this.diskId,
    this.diskPath,
    required this.gatewayArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskIdValue = diskId;
    if (diskIdValue != null) {
      map['diskId'] = diskIdValue;
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

  factory UploadBufferArgs.fromMap(Map<String, dynamic> map) {
    return UploadBufferArgs(
      diskId: pulumi.Input.asOptionalInput<String>(map['diskId']),
      diskPath: pulumi.Input.asOptionalInput<String>(map['diskPath']),
      gatewayArn: pulumi.Input.asInput<String>(map['gatewayArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
