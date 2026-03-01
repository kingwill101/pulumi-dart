// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resourcemanager_handshake_handshake_args_doc}
/// The set of arguments for Handshake.
/// {@endtemplate}
/// {@macro pulumi_resourcemanager_handshake_handshake_args_doc}
class HandshakeArgs {
  /// The description of the invitation.
  /// The description can be up to 1,024 characters in length.
  final pulumi.Input<String>? note;
  /// The ID or logon email address of the account that you want to invite.
  final pulumi.Input<String> targetEntity;
  /// The type of the invited account. Valid values:
  ///
  /// - Account: indicates the ID of the account.
  /// - Email: indicates the logon email address of the account.
  final pulumi.Input<String> targetType;

  /// Creates a new [HandshakeArgs].
  /// [note] The description of the invitation.
  /// [targetEntity] The ID or logon email address of the account that you want to invite.
  /// [targetType] The type of the invited account. Valid values:
  HandshakeArgs({
    pulumi.Output<String>? note,
    required pulumi.Output<String> targetEntity,
    required pulumi.Output<String> targetType,
  }) :
      note = pulumi.Input.asOptionalInput<String>(note),
      targetEntity = pulumi.Input.asInput<String>(targetEntity),
      targetType = pulumi.Input.asInput<String>(targetType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'note': ?note,
      'targetEntity': targetEntity,
      'targetType': targetType,
    };
  }

  factory HandshakeArgs.fromMap(Map<String, dynamic> map) {
    return HandshakeArgs(
      note: map['note'] == null ? null : pulumi.Output.create<String>(map['note'] as String),
      targetEntity: pulumi.Output.create<String>(map['targetEntity'] as String),
      targetType: pulumi.Output.create<String>(map['targetType'] as String),
    );
  }
}

