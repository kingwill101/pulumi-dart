// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kvstore_connection_connection_args_doc}
/// The set of arguments for Connection.
/// {@endtemplate}
/// {@macro pulumi_kvstore_connection_connection_args_doc}
class ConnectionArgs {
  /// The prefix of the public endpoint. The prefix can be 8 to 64 characters in length, and can contain lowercase letters and digits. It must start with a lowercase letter.
  final pulumi.Input<String> connectionStringPrefix;
  /// The ID of the instance.
  final pulumi.Input<String> instanceId;
  /// The service port number of the instance.
  final pulumi.Input<String> port;

  /// Creates a new [ConnectionArgs].
  /// [connectionStringPrefix] The prefix of the public endpoint. The prefix can be 8 to 64 characters in length, and can contain lowercase letters and digits. It must start with a lowercase letter.
  /// [instanceId] The ID of the instance.
  /// [port] The service port number of the instance.
  ConnectionArgs({
    required String connectionStringPrefix,
    required String instanceId,
    required String port,
  }) :
      connectionStringPrefix = pulumi.Input.asInput<String>(connectionStringPrefix),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      port = pulumi.Input.asInput<String>(port);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStringPrefix': connectionStringPrefix,
      'instanceId': instanceId,
      'port': port,
    };
  }

  factory ConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs(
      connectionStringPrefix: map['connectionStringPrefix'] as String,
      instanceId: map['instanceId'] as String,
      port: map['port'] as String,
    );
  }
}

