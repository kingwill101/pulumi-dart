// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bastionhost_host_share_key_host_share_key_args_doc}
/// The set of arguments for HostShareKey.
/// {@endtemplate}
/// {@macro pulumi_bastionhost_host_share_key_host_share_key_args_doc}
class HostShareKeyArgs {
  /// The name of the host shared key to be added. The name can be a maximum of 128 characters in length.
  final pulumi.Input<String> hostShareKeyName;
  /// The ID of the Bastion instance.
  final pulumi.Input<String> instanceId;
  /// The password of the private key. The value is a Base64-encoded string.
  final pulumi.Input<String>? passPhrase;
  /// The private key. The value is a Base64-encoded string.
  final pulumi.Input<String> privateKey;

  /// Creates a new [HostShareKeyArgs].
  /// [hostShareKeyName] The name of the host shared key to be added. The name can be a maximum of 128 characters in length.
  /// [instanceId] The ID of the Bastion instance.
  /// [passPhrase] The password of the private key. The value is a Base64-encoded string.
  /// [privateKey] The private key. The value is a Base64-encoded string.
  HostShareKeyArgs({
    required this.hostShareKeyName,
    required this.instanceId,
    this.passPhrase,
    required this.privateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostShareKeyName': hostShareKeyName,
      'instanceId': instanceId,
      'passPhrase': ?passPhrase,
      'privateKey': privateKey,
    };
  }

  factory HostShareKeyArgs.fromMap(Map<String, dynamic> map) {
    return HostShareKeyArgs(
      hostShareKeyName: (map['hostShareKeyName'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      passPhrase: map['passPhrase'] == null ? null : (map['passPhrase']! as String).input(),
      privateKey: (map['privateKey'] as String).input(),
    );
  }
}

