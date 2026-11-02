// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_macsec_key_association_macsec_key_association_args_doc}
/// The set of arguments for MacsecKeyAssociation.
/// {@endtemplate}
/// {@macro pulumi_directconnect_macsec_key_association_macsec_key_association_args_doc}
class MacsecKeyAssociationArgs {
  /// MAC Security (MACsec) CAK to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `ckn` or `cknWo` unless `cakWo` is configured. Conflicts with `cakWo`. Changing this argument replaces the association.
  final pulumi.Input<String?>? cak;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only MAC Security (MACsec) CAK to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Requires `cakWoVersion` and either `ckn` or `cknWo`. Conflicts with `cak` and `secretArn`. This value is not stored in the plan or state.
  final pulumi.Input<String?>? cakWo;
  /// Positive integer used to trigger replacement when `cakWo` changes. Required with `cakWo`. Increment this value to replace the association using the current write-only values.
  final pulumi.Input<int?>? cakWoVersion;
  /// MAC Security (MACsec) CKN to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `cak` or `cakWo` unless `cknWo` is configured. Conflicts with `cknWo`. Changing this argument replaces the association.
  final pulumi.Input<String?>? ckn;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Write-only MAC Security (MACsec) CKN to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Requires `cknWoVersion` and either `cak` or `cakWo`. Conflicts with `ckn` and `secretArn`. This value is not stored in the plan or state.
  final pulumi.Input<String?>? cknWo;
  /// Positive integer used to trigger replacement when `cknWo` changes. Required with `cknWo`. Increment this value to replace the association using the current write-only values.
  final pulumi.Input<int?>? cknWoVersion;
  /// ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> connectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  ///
  /// &gt; **Note:** Supply either a CAK/CKN pair (using regular or write-only arguments) or `secretArn`. Do not combine key arguments with `secretArn`.
  final pulumi.Input<String?>? secretArn;

  /// Creates a new [MacsecKeyAssociationArgs].
  /// [cak] MAC Security (MACsec) CAK to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `ckn` or `cknWo` unless `cakWo` is configured. Conflicts with `cakWo`. Changing this argument replaces the association.
  /// [cakWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [cakWoVersion] Positive integer used to trigger replacement when `cakWo` changes. Required with `cakWo`. Increment this value to replace the association using the current write-only values.
  /// [ckn] MAC Security (MACsec) CKN to associate with the dedicated connection. Valid values are 64 hexadecimal characters (0-9, A-F). Required with `cak` or `cakWo` unless `cknWo` is configured. Conflicts with `cknWo`. Changing this argument replaces the association.
  /// [cknWo] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [cknWoVersion] Positive integer used to trigger replacement when `cknWo` changes. Required with `cknWo`. Increment this value to replace the association using the current write-only values.
  /// [connectionId] ID of the dedicated Direct Connect connection. The connection must be a dedicated connection in the `AVAILABLE` state.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [secretArn] ARN of the MAC Security (MACsec) secret key to associate with the dedicated connection.
  const MacsecKeyAssociationArgs({
    this.cak,
    this.cakWo,
    this.cakWoVersion,
    this.ckn,
    this.cknWo,
    this.cknWoVersion,
    required this.connectionId,
    this.region,
    this.secretArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cak': ?cak,
      'cakWo': ?cakWo,
      'cakWoVersion': ?cakWoVersion,
      'ckn': ?ckn,
      'cknWo': ?cknWo,
      'cknWoVersion': ?cknWoVersion,
      'connectionId': connectionId,
      'region': ?region,
      'secretArn': ?secretArn,
    };
  }

  factory MacsecKeyAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MacsecKeyAssociationArgs(
      cak: (() { final guardedValue = map['cak']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cakWo: (() { final guardedValue = map['cakWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cakWoVersion: (() { final guardedValue = map['cakWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      ckn: (() { final guardedValue = map['ckn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cknWo: (() { final guardedValue = map['cknWo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cknWoVersion: (() { final guardedValue = map['cknWoVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretArn: (() { final guardedValue = map['secretArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
