// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Connection resources.
class ConnectionState {
  /// The public connection string of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  final pulumi.Input<String>? connectionString;
  /// The prefix of the public endpoint. The prefix can be 8 to 64 characters in length, and can contain lowercase letters and digits. It must start with a lowercase letter.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The ID of the instance.
  final pulumi.Input<String>? instanceId;
  /// The service port number of the instance.
  final pulumi.Input<String>? port;

  /// Creates a new [ConnectionState].
  /// [connectionString] The public connection string of Tair (Redis OSS-Compatible) And Memcache (KVStore) Instance.
  /// [connectionStringPrefix] The prefix of the public endpoint. The prefix can be 8 to 64 characters in length, and can contain lowercase letters and digits. It must start with a lowercase letter.
  /// [instanceId] The ID of the instance.
  /// [port] The service port number of the instance.
  ConnectionState({
    this.connectionString,
    this.connectionStringPrefix,
    this.instanceId,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'instanceId': ?instanceId,
      'port': ?port,
    };
  }

  factory ConnectionState.fromMap(Map<String, dynamic> map) {
    return ConnectionState(
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

