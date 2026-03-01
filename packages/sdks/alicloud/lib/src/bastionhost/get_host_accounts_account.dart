// ignore_for_file: unused_element, unnecessary_cast


class GetHostAccountsAccount {
  /// Whether to set a new password.
  final bool hasPassword;
  /// Hosting account ID.
  final String hostAccountId;
  /// Specify the new hosting account's name, support the longest 128 characters.
  final String hostAccountName;
  /// Specifies the database where you want to create your hosting account's host ID.
  final String hostId;
  /// The ID of the Host Account.
  final String id;
  /// Specifies the database where you want to create your hosting account's host bastion host ID of.
  final String instanceId;
  /// The situation where the private keys of the fingerprint information.
  final String privateKeyFingerprint;
  /// Specify the new hosting account of the agreement name. Valid values: USING SSH and RDP.
  final String protocolName;

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
      hasPassword: map['hasPassword'] as bool,
      hostAccountId: map['hostAccountId'] as String,
      hostAccountName: map['hostAccountName'] as String,
      hostId: map['hostId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      privateKeyFingerprint: map['privateKeyFingerprint'] as String,
      protocolName: map['protocolName'] as String,
    );
  }
}

