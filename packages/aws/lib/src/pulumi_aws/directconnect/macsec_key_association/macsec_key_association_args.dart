// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for MacsecKeyAssociation.
class MacsecKeyAssociationArgs {
  /// The MAC Security (MACsec) CAK to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `ckn`.
  final Input<String>? cak;

  /// The MAC Security (MACsec) CKN to associate with the dedicated connection. The valid values are 64 hexadecimal characters (0-9, A-E). Required if using `cak`.
  final Input<String>? ckn;

  /// The ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  final Input<String> connectionId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// > **Note:** `ckn` and `cak` are mutually exclusive with `secret_arn` - these arguments cannot be used together. If you use `ckn` and `cak`, you should not use `secret_arn`. If you use the `secret_arn` argument to reference an existing MAC Security (MACSec) secret key, you should not use `ckn` or `cak`.
  final Input<String>? secretArn;

  MacsecKeyAssociationArgs({
    this.cak,
    this.ckn,
    required this.connectionId,
    this.region,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cakValue = cak;
    if (cakValue != null) {
      map['cak'] = cakValue;
    }
    final cknValue = ckn;
    if (cknValue != null) {
      map['ckn'] = cknValue;
    }
    map['connectionId'] = connectionId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final secretArnValue = secretArn;
    if (secretArnValue != null) {
      map['secretArn'] = secretArnValue;
    }
    return map;
  }

  factory MacsecKeyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MacsecKeyAssociationArgs(
      cak: Input.asOptionalInput<String>(map['cak']),
      ckn: Input.asOptionalInput<String>(map['ckn']),
      connectionId: Input.asInput<String>(map['connectionId']),
      region: Input.asOptionalInput<String>(map['region']),
      secretArn: Input.asOptionalInput<String>(map['secretArn']),
    );
  }
}
