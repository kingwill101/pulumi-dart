// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MacsecKeyAssociation resources.
class MacsecKeyAssociationState {
  /// The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `ckn`.
  final pulumi.Input<String>? cak;
  /// The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `cak`.
  final pulumi.Input<String>? ckn;
  /// The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  final pulumi.Input<String>? connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// > **Note:** `ckn` and `cak` are mutually exclusive with `secret_arn` - these arguments cannot be used together. If you use `ckn` and `cak`, you should not use `secret_arn`. If you use the `secret_arn` argument to reference an existing MAC Security (MACSec) secret key, you should not use `ckn` or `cak`.
  final pulumi.Input<String>? secretArn;
  /// The date in UTC format that the MAC Security (MACsec) secret key takes effect.
  final pulumi.Input<String>? startOn;
  /// The state of the MAC Security (MACsec) secret key. The possible values are: associating, associated, disassociating, disassociated. See [MacSecKey](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_MacSecKey.html#DX-Type-MacSecKey-state) for descriptions of each state.
  final pulumi.Input<String>? state;

  /// Creates a new [MacsecKeyAssociationState].
  /// [cak] The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `ckn`.
  /// [ckn] The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `cak`.
  /// [connectionId] The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  /// [startOn] The date in UTC format that the MAC Security (MACsec) secret key takes effect.
  /// [state] The state of the MAC Security (MACsec) secret key. The possible values are: associating, associated, disassociating, disassociated. See [MacSecKey](https://docs.aws.amazon.com/directconnect/latest/APIReference/API_MacSecKey.html#DX-Type-MacSecKey-state) for descriptions of each state.
  MacsecKeyAssociationState({
    pulumi.Output<String>? cak,
    pulumi.Output<String>? ckn,
    pulumi.Output<String>? connectionId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretArn,
    pulumi.Output<String>? startOn,
    pulumi.Output<String>? state,
  }) :
      cak = pulumi.Input.asOptionalInput<String>(cak),
      ckn = pulumi.Input.asOptionalInput<String>(ckn),
      connectionId = pulumi.Input.asOptionalInput<String>(connectionId),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretArn = pulumi.Input.asOptionalInput<String>(secretArn),
      startOn = pulumi.Input.asOptionalInput<String>(startOn),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cak': ?cak,
      'ckn': ?ckn,
      'connectionId': ?connectionId,
      'region': ?region,
      'secretArn': ?secretArn,
      'startOn': ?startOn,
      'state': ?state,
    };
  }

  factory MacsecKeyAssociationState.fromMap(Map<String, dynamic> map) {
    return MacsecKeyAssociationState(
      cak: map['cak'] == null ? null : pulumi.Output.create<String>(map['cak'] as String),
      ckn: map['ckn'] == null ? null : pulumi.Output.create<String>(map['ckn'] as String),
      connectionId: map['connectionId'] == null ? null : pulumi.Output.create<String>(map['connectionId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretArn: map['secretArn'] == null ? null : pulumi.Output.create<String>(map['secretArn'] as String),
      startOn: map['startOn'] == null ? null : pulumi.Output.create<String>(map['startOn'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

