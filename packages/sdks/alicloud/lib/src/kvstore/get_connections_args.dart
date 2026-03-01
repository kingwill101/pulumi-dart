// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_get_connections_get_connections_args_doc}
/// Arguments for getConnections.
/// {@endtemplate}
/// {@macro pulumi_kvstore_get_connections_get_connections_args_doc}
class GetConnectionsArgs {
  /// A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance ids, only support one item.
  final pulumi.Input<String> ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConnectionsArgs].
  /// [ids] A list of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance ids, only support one item.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConnectionsArgs({
    required pulumi.Output<String> ids,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asInput<String>(ids),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionsArgs(
      ids: pulumi.Output.create<String>(map['ids'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

