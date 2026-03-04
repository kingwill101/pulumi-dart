// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostAccount resources.
class HostAccountState {
  /// Hosting account ID.
  final pulumi.Input<String>? hostAccountId;

  /// The name of the host account. The name can be up to 128 characters in length.
  final pulumi.Input<String>? hostAccountName;

  /// The ID of the host for which you want to create an account.
  final pulumi.Input<String>? hostId;

  /// The ID of the Bastionhost instance where you want to create an account for the host.
  final pulumi.Input<String>? instanceId;

  /// The passphrase of the private key for the host account. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`.
  final pulumi.Input<String>? passPhrase;

  /// The password of the host account.
  final pulumi.Input<String>? password;

  /// The private key of the host account. The value is a Base64-encoded string. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`
  final pulumi.Input<String>? privateKey;

  /// The protocol used by the host account. Valid values: SSH,RDP
  final pulumi.Input<String>? protocolName;

  /// Creates a new [HostAccountState].
  /// [hostAccountId] Hosting account ID.
  /// [hostAccountName] The name of the host account. The name can be up to 128 characters in length.
  /// [hostId] The ID of the host for which you want to create an account.
  /// [instanceId] The ID of the Bastionhost instance where you want to create an account for the host.
  /// [passPhrase] The passphrase of the private key for the host account. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`.
  /// [password] The password of the host account.
  /// [privateKey] The private key of the host account. The value is a Base64-encoded string. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`
  /// [protocolName] The protocol used by the host account. Valid values: SSH,RDP
  HostAccountState({
    this.hostAccountId,
    this.hostAccountName,
    this.hostId,
    this.instanceId,
    this.passPhrase,
    this.password,
    this.privateKey,
    this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountId': ?hostAccountId,
      'hostAccountName': ?hostAccountName,
      'hostId': ?hostId,
      'instanceId': ?instanceId,
      'passPhrase': ?passPhrase,
      'password': ?password,
      'privateKey': ?privateKey,
      'protocolName': ?protocolName,
    };
  }

  factory HostAccountState.fromMap(Map<String, dynamic> map) {
    return HostAccountState(
      hostAccountId: (() {
        final guardedValue = map['hostAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostAccountName: (() {
        final guardedValue = map['hostAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostId: (() {
        final guardedValue = map['hostId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      passPhrase: (() {
        final guardedValue = map['passPhrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateKey: (() {
        final guardedValue = map['privateKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolName: (() {
        final guardedValue = map['protocolName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
