// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_adb_connection_connection_args_doc}
class ConnectionArgs {
  /// Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `&lt;db_cluster_id&gt; + tf`.
  final pulumi.Input<String>? connectionPrefix;

  /// The Id of cluster that can run database.
  final pulumi.Input<String> dbClusterId;

  /// Creates a new [ConnectionArgs].
  /// [connectionPrefix] Prefix of the cluster public endpoint. The prefix must be 6 to 30 characters in length, and can contain lowercase letters, digits, and hyphens (-), must start with a letter and end with a digit or letter. Default to `&lt;db_cluster_id&gt; + tf`.
  /// [dbClusterId] The Id of cluster that can run database.
  ConnectionArgs({this.connectionPrefix, required this.dbClusterId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'dbClusterId': dbClusterId,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionPrefix: (() {
        final guardedValue = map['connectionPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
    );
  }
}
