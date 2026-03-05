// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostAccountsAccount {
  /// Whether to set a new password.
  final pulumi.Input<bool> hasPassword;
  /// Hosting account ID.
  final pulumi.Input<String> hostAccountId;
  /// Specify the new hosting account's name, support the longest 128 characters.
  final pulumi.Input<String> hostAccountName;
  /// Specifies the database where you want to create your hosting account's host ID.
  final pulumi.Input<String> hostId;
  /// The ID of the Host Account.
  final pulumi.Input<String> id;
  /// Specifies the database where you want to create your hosting account's host bastion host ID of.
  final pulumi.Input<String> instanceId;
  /// The situation where the private keys of the fingerprint information.
  final pulumi.Input<String> privateKeyFingerprint;
  /// Specify the new hosting account of the agreement name. Valid values: USING SSH and RDP.
  final pulumi.Input<String> protocolName;

  /// Creates a new [GetHostAccountsAccount].
  /// [hasPassword] Whether to set a new password.
  /// [hostAccountId] Hosting account ID.
  /// [hostAccountName] Specify the new hosting account's name, support the longest 128 characters.
  /// [hostId] Specifies the database where you want to create your hosting account's host ID.
  /// [id] The ID of the Host Account.
  /// [instanceId] Specifies the database where you want to create your hosting account's host bastion host ID of.
  /// [privateKeyFingerprint] The situation where the private keys of the fingerprint information.
  /// [protocolName] Specify the new hosting account of the agreement name. Valid values: USING SSH and RDP.
  GetHostAccountsAccount({
    required this.hasPassword,
    required this.hostAccountId,
    required this.hostAccountName,
    required this.hostId,
    required this.id,
    required this.instanceId,
    required this.privateKeyFingerprint,
    required this.protocolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasPassword': hasPassword,
      'hostAccountId': hostAccountId,
      'hostAccountName': hostAccountName,
      'hostId': hostId,
      'id': id,
      'instanceId': instanceId,
      'privateKeyFingerprint': privateKeyFingerprint,
      'protocolName': protocolName,
    };
  }

  factory GetHostAccountsAccount.fromMap(Map<String, dynamic> map) {
    return GetHostAccountsAccount(
      hasPassword: pulumi.Input.fromValue(map['hasPassword'] as bool),
      hostAccountId: pulumi.Input.fromValue(map['hostAccountId'] as String),
      hostAccountName: pulumi.Input.fromValue(map['hostAccountName'] as String),
      hostId: pulumi.Input.fromValue(map['hostId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      privateKeyFingerprint: pulumi.Input.fromValue(map['privateKeyFingerprint'] as String),
      protocolName: pulumi.Input.fromValue(map['protocolName'] as String),
    );
  }
}

