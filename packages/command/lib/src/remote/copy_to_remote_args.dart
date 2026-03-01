// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection.dart';

/// {@template pulumi_remote_copy_to_remote_args_doc}
/// The set of arguments for CopyToRemote.
/// {@endtemplate}
/// {@macro pulumi_remote_copy_to_remote_args_doc}
class CopyToRemoteArgs {
  /// The parameters with which to connect to the remote host.
  final pulumi.Input<Connection> connection;
  /// The destination path on the remote host. The last element of the path will be created if it doesn't exist but it's an error when additional elements don't exist. When the remote path is an existing directory, the source file or directory will be copied into that directory. When the source is a file and the remote path is an existing file, that file will be overwritten. When the source is a directory and the remote path an existing file, the copy will fail.
  final pulumi.Input<String> remotePath;
  /// An [asset or an archive](https://www.pulumi.com/docs/concepts/assets-archives/) to upload as the source of the copy. It must be a `FileAsset`, `StringAsset`, or a `FileArchive`. The item will be copied as-is; archives like .tgz will not be unpacked. Directories are copied recursively, overwriting existing files.
  final pulumi.Input<dynamic> source;
  /// Trigger replacements on changes to this input.
  final pulumi.Input<List<dynamic>>? triggers;

  /// Creates a new [CopyToRemoteArgs].
  /// [connection] The parameters with which to connect to the remote host.
  /// [remotePath] The destination path on the remote host. The last element of the path will be created if it doesn't exist but it's an error when additional elements don't exist. When the remote path is an existing directory, the source file or directory will be copied into that directory. When the source is a file and the remote path is an existing file, that file will be overwritten. When the source is a directory and the remote path an existing file, the copy will fail.
  /// [source] An [asset or an archive](https://www.pulumi.com/docs/concepts/assets-archives/) to upload as the source of the copy. It must be a `FileAsset`, `StringAsset`, or a `FileArchive`. The item will be copied as-is; archives like .tgz will not be unpacked. Directories are copied recursively, overwriting existing files.
  /// [triggers] Trigger replacements on changes to this input.
  CopyToRemoteArgs({
    required Connection connection,
    required String remotePath,
    required dynamic source,
    List<dynamic>? triggers,
  }) :
      connection = pulumi.Input.asInput<Connection>(connection),
      remotePath = pulumi.Input.asInput<String>(remotePath),
      source = pulumi.Input.asInput<dynamic>(source),
      triggers = pulumi.Input.asOptionalInput<List<dynamic>>(triggers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': pulumi.Input.mapInputValue<Connection, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'remotePath': remotePath,
      'source': source,
      'triggers': ?triggers,
    };
  }

  factory CopyToRemoteArgs.fromMap(Map<String, dynamic> map) {
    return CopyToRemoteArgs(
      connection: Connection.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      remotePath: map['remotePath'] as String,
      source: map['source'],
      triggers: map['triggers'] == null ? null : (map['triggers'] as List).cast<dynamic>(),
    );
  }
}

