// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkingStorage resources.
class WorkingStorageState {
  /// Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  final pulumi.Input<String>? diskId;
  /// The Amazon Resource Name (ARN) of the gateway.
  final pulumi.Input<String>? gatewayArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [WorkingStorageState].
  /// [diskId] Local disk identifier. For example, `pci-0000:03:00.0-scsi-0:0:0:0`.
  /// [gatewayArn] The Amazon Resource Name (ARN) of the gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  WorkingStorageState({
    pulumi.Output<String>? diskId,
    pulumi.Output<String>? gatewayArn,
    pulumi.Output<String>? region,
  }) :
      diskId = pulumi.Input.asOptionalInput<String>(diskId),
      gatewayArn = pulumi.Input.asOptionalInput<String>(gatewayArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskId': ?diskId,
      'gatewayArn': ?gatewayArn,
      'region': ?region,
    };
  }

  factory WorkingStorageState.fromMap(Map<String, dynamic> map) {
    return WorkingStorageState(
      diskId: map['diskId'] == null ? null : pulumi.Output.create<String>(map['diskId'] as String),
      gatewayArn: map['gatewayArn'] == null ? null : pulumi.Output.create<String>(map['gatewayArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

