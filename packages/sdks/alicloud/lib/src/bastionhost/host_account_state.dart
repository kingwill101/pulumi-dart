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
    pulumi.Output<String>? hostAccountId,
    pulumi.Output<String>? hostAccountName,
    pulumi.Output<String>? hostId,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? passPhrase,
    pulumi.Output<String>? password,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? protocolName,
  }) :
      hostAccountId = pulumi.Input.asOptionalInput<String>(hostAccountId),
      hostAccountName = pulumi.Input.asOptionalInput<String>(hostAccountName),
      hostId = pulumi.Input.asOptionalInput<String>(hostId),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      passPhrase = pulumi.Input.asOptionalInput<String>(passPhrase),
      password = pulumi.Input.asOptionalInput<String>(password),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      protocolName = pulumi.Input.asOptionalInput<String>(protocolName);

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
      hostAccountId: map['hostAccountId'] == null ? null : pulumi.Output.create<String>(map['hostAccountId'] as String),
      hostAccountName: map['hostAccountName'] == null ? null : pulumi.Output.create<String>(map['hostAccountName'] as String),
      hostId: map['hostId'] == null ? null : pulumi.Output.create<String>(map['hostId'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      passPhrase: map['passPhrase'] == null ? null : pulumi.Output.create<String>(map['passPhrase'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      protocolName: map['protocolName'] == null ? null : pulumi.Output.create<String>(map['protocolName'] as String),
    );
  }
}

