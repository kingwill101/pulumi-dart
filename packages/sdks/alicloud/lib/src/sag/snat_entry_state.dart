// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnatEntry resources.
class SnatEntryState {
  /// The destination CIDR block.
  final pulumi.Input<String>? cidrBlock;
  /// The ID of the SAG instance.
  final pulumi.Input<String>? sagId;
  /// The public IP address.
  final pulumi.Input<String>? snatIp;

  /// Creates a new [SnatEntryState].
  /// [cidrBlock] The destination CIDR block.
  /// [sagId] The ID of the SAG instance.
  /// [snatIp] The public IP address.
  SnatEntryState({
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<String>? sagId,
    pulumi.Output<String>? snatIp,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      sagId = pulumi.Input.asOptionalInput<String>(sagId),
      snatIp = pulumi.Input.asOptionalInput<String>(snatIp);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'sagId': ?sagId,
      'snatIp': ?snatIp,
    };
  }

  factory SnatEntryState.fromMap(Map<String, dynamic> map) {
    return SnatEntryState(
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      sagId: map['sagId'] == null ? null : pulumi.Output.create<String>(map['sagId'] as String),
      snatIp: map['snatIp'] == null ? null : pulumi.Output.create<String>(map['snatIp'] as String),
    );
  }
}

