// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_ssh_key_ssh_key_args_doc}
/// The set of arguments for SshKey.
/// {@endtemplate}
/// {@macro pulumi_index_ssh_key_ssh_key_args_doc}
class SshKeyArgs {
  /// A label for the SSH Key.
  final pulumi.Input<String> label;
  /// The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  final pulumi.Input<String> sshKey;

  /// Creates a new [SshKeyArgs].
  /// [label] A label for the SSH Key.
  /// [sshKey] The public SSH Key, which is used to authenticate to the root user of the Linodes you deploy.
  SshKeyArgs({
    required String label,
    required String sshKey,
  }) :
      label = pulumi.Input.asInput<String>(label),
      sshKey = pulumi.Input.asInput<String>(sshKey);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'sshKey': sshKey,
    };
  }

  factory SshKeyArgs.fromMap(Map<String, dynamic> map) {
    return SshKeyArgs(
      label: map['label'] as String,
      sshKey: map['sshKey'] as String,
    );
  }
}

