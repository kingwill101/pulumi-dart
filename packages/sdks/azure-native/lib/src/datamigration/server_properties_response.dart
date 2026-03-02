// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server properties for MySQL type source
class ServerPropertiesResponse {
  /// Number of databases in the server
  final pulumi.Input<int> serverDatabaseCount;
  /// Edition of the database server
  final pulumi.Input<String> serverEdition;
  /// Name of the server
  final pulumi.Input<String> serverName;
  /// Version of the operating system
  final pulumi.Input<String> serverOperatingSystemVersion;
  /// Name of the server platform
  final pulumi.Input<String> serverPlatform;
  /// Version of the database server
  final pulumi.Input<String> serverVersion;

  /// Creates a new [ServerPropertiesResponse].
  /// [serverDatabaseCount] Number of databases in the server
  /// [serverEdition] Edition of the database server
  /// [serverName] Name of the server
  /// [serverOperatingSystemVersion] Version of the operating system
  /// [serverPlatform] Name of the server platform
  /// [serverVersion] Version of the database server
  ServerPropertiesResponse({
    required this.serverDatabaseCount,
    required this.serverEdition,
    required this.serverName,
    required this.serverOperatingSystemVersion,
    required this.serverPlatform,
    required this.serverVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverDatabaseCount': serverDatabaseCount,
      'serverEdition': serverEdition,
      'serverName': serverName,
      'serverOperatingSystemVersion': serverOperatingSystemVersion,
      'serverPlatform': serverPlatform,
      'serverVersion': serverVersion,
    };
  }

  factory ServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServerPropertiesResponse(
      serverDatabaseCount: (map['serverDatabaseCount'] as int).input(),
      serverEdition: (map['serverEdition'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      serverOperatingSystemVersion: (map['serverOperatingSystemVersion'] as String).input(),
      serverPlatform: (map['serverPlatform'] as String).input(),
      serverVersion: (map['serverVersion'] as String).input(),
    );
  }
}

