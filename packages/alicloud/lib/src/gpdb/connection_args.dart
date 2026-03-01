// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gpdb_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_gpdb_connection_connection_args_doc}
class ConnectionArgs {
  /// Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + '-tf'.
  final pulumi.Input<String>? connectionPrefix;
  /// The Id of instance that can run database.
  final pulumi.Input<String> instanceId;
  /// Internet connection port. Valid value: [3200-3999]. Default to 3306.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionArgs].
  /// [connectionPrefix] Prefix of an Internet connection string. It must be checked for uniqueness. It may consist of lowercase letters, numbers, and underlines, and must start with a letter and have no more than 30 characters. Default to <instance_id> + '-tf'.
  /// [instanceId] The Id of instance that can run database.
  /// [port] Internet connection port. Valid value: [3200-3999]. Default to 3306.
  ConnectionArgs({
    String? connectionPrefix,
    required String instanceId,
    String? port,
  }) :
      connectionPrefix = pulumi.Input.asOptionalInput<String>(connectionPrefix),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      port = pulumi.Input.asOptionalInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPrefix': ?connectionPrefix,
      'instanceId': instanceId,
      'port': ?port,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionPrefix: map['connectionPrefix'] == null ? null : map['connectionPrefix'] as String,
      instanceId: map['instanceId'] as String,
      port: map['port'] == null ? null : map['port'] as String,
    );
  }
}

