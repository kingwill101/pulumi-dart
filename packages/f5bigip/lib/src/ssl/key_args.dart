// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ssl_key_key_args_doc}
/// The set of arguments for Key.
/// {@endtemplate}
/// {@macro pulumi_ssl_key_key_args_doc}
class KeyArgs {
  /// Content of SSL certificate key present on local Disk
  final pulumi.Input<String> content;
  /// Full Path Name of ssl key
  final pulumi.Input<String>? fullPath;
  /// Name of the SSL Certificate key to be Imported on to BIGIP
  final pulumi.Input<String> name;
  /// Partition of ssl certificate key
  final pulumi.Input<String>? partition;
  /// Passphrase on key.
  final pulumi.Input<String>? passphrase;

  /// Creates a new [KeyArgs].
  /// [content] Content of SSL certificate key present on local Disk
  /// [fullPath] Full Path Name of ssl key
  /// [name] Name of the SSL Certificate key to be Imported on to BIGIP
  /// [partition] Partition of ssl certificate key
  /// [passphrase] Passphrase on key.
  KeyArgs({
    required String content,
    String? fullPath,
    required String name,
    String? partition,
    String? passphrase,
  }) :
      content = pulumi.Input.asInput<String>(content),
      fullPath = pulumi.Input.asOptionalInput<String>(fullPath),
      name = pulumi.Input.asInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      passphrase = pulumi.Input.asOptionalInput<String>(passphrase);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'fullPath': ?fullPath,
      'name': name,
      'partition': ?partition,
      'passphrase': ?passphrase,
    };
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      content: map['content'] as String,
      fullPath: map['fullPath'] == null ? null : map['fullPath'] as String,
      name: map['name'] as String,
      partition: map['partition'] == null ? null : map['partition'] as String,
      passphrase: map['passphrase'] == null ? null : map['passphrase'] as String,
    );
  }
}

