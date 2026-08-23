// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Incident Management Configurations
class IncidentManagementConfiguration {
  /// The key for the connection
  final pulumi.Input<String>? connectionKey;
  /// The name of the connection
  final pulumi.Input<String>? connectionName;
  /// The URL of the connection
  final pulumi.Input<String>? connectionUrl;
  /// The user for the connection
  final pulumi.Input<String>? oboUser;
  /// The type of incident management system
  final pulumi.Input<String>? type;

  /// Creates a new [IncidentManagementConfiguration].
  /// [connectionKey] The key for the connection
  /// [connectionName] The name of the connection
  /// [connectionUrl] The URL of the connection
  /// [oboUser] The user for the connection
  /// [type] The type of incident management system
  const IncidentManagementConfiguration({
    this.connectionKey,
    this.connectionName,
    this.connectionUrl,
    this.oboUser,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionKey': ?connectionKey,
      'connectionName': ?connectionName,
      'connectionUrl': ?connectionUrl,
      'oboUser': ?oboUser,
      'type': ?type,
    };
  }

  factory IncidentManagementConfiguration.fromMap(Map<String, dynamic> map) {
    return IncidentManagementConfiguration(
      connectionKey: (() { final guardedValue = map['connectionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionName: (() { final guardedValue = map['connectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oboUser: (() { final guardedValue = map['oboUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
