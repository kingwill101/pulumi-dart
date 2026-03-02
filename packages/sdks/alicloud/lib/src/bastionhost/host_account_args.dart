// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_account_host_account_args_doc}
/// The set of arguments for HostAccount.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_account_host_account_args_doc}
class HostAccountArgs {
  /// The name of the host account. The name can be up to 128 characters in length.
  final pulumi.Input<String> hostAccountName;
  /// The ID of the host for which you want to create an account.
  final pulumi.Input<String> hostId;
  /// The ID of the Bastionhost instance where you want to create an account for the host.
  final pulumi.Input<String> instanceId;
  /// The passphrase of the private key for the host account. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`.
  final pulumi.Input<String>? passPhrase;
  /// The password of the host account.
  final pulumi.Input<String>? password;
  /// The private key of the host account. The value is a Base64-encoded string. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`
  final pulumi.Input<String>? privateKey;
  /// The protocol used by the host account. Valid values: SSH,RDP
  final pulumi.Input<String> protocolName;

  /// Creates a new [HostAccountArgs].
  /// [hostAccountName] The name of the host account. The name can be up to 128 characters in length.
  /// [hostId] The ID of the host for which you want to create an account.
  /// [instanceId] The ID of the Bastionhost instance where you want to create an account for the host.
  /// [passPhrase] The passphrase of the private key for the host account. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`.
  /// [password] The password of the host account.
  /// [privateKey] The private key of the host account. The value is a Base64-encoded string. **NOTE:** It is valid when the attribute `protocol_name` is `SSH`
  /// [protocolName] The protocol used by the host account. Valid values: SSH,RDP
  HostAccountArgs({
    required this.hostAccountName,
    required this.hostId,
    required this.instanceId,
    this.passPhrase,
    this.password,
    this.privateKey,
    required this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostAccountName': hostAccountName,
      'hostId': hostId,
      'instanceId': instanceId,
      'passPhrase': ?passPhrase,
      'password': ?password,
      'privateKey': ?privateKey,
      'protocolName': protocolName,
    };
  }

  factory HostAccountArgs.fromMap(Map<String, dynamic> map) {
    return HostAccountArgs(
      hostAccountName: (map['hostAccountName'] as String).input(),
      hostId: (map['hostId'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      passPhrase: map['passPhrase'] == null ? null : (map['passPhrase'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      protocolName: (map['protocolName'] as String).input(),
    );
  }
}

