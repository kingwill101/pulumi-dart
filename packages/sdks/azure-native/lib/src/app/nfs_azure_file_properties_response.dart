// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NFS Azure File Properties.
class NfsAzureFilePropertiesResponse {
  /// Access mode for storage
  final pulumi.Input<String>? accessMode;
  /// Server for NFS azure file.
  final pulumi.Input<String>? server;
  /// NFS Azure file share name.
  final pulumi.Input<String>? shareName;

  /// Creates a new [NfsAzureFilePropertiesResponse].
  /// [accessMode] Access mode for storage
  /// [server] Server for NFS azure file.
  /// [shareName] NFS Azure file share name.
  NfsAzureFilePropertiesResponse({
    this.accessMode,
    this.server,
    this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'server': ?server,
      'shareName': ?shareName,
    };
  }

  factory NfsAzureFilePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return NfsAzureFilePropertiesResponse(
      accessMode: map['accessMode'] == null ? null : (map['accessMode']! as String).input(),
      server: map['server'] == null ? null : (map['server']! as String).input(),
      shareName: map['shareName'] == null ? null : (map['shareName']! as String).input(),
    );
  }
}

