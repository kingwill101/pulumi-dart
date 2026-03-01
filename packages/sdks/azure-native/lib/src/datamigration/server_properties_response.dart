// ignore_for_file: unused_element, unnecessary_cast


/// Server properties for MySQL type source
class ServerPropertiesResponse {
  /// Number of databases in the server
  final int serverDatabaseCount;
  /// Edition of the database server
  final String serverEdition;
  /// Name of the server
  final String serverName;
  /// Version of the operating system
  final String serverOperatingSystemVersion;
  /// Name of the server platform
  final String serverPlatform;
  /// Version of the database server
  final String serverVersion;

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
      serverDatabaseCount: map['serverDatabaseCount'] as int,
      serverEdition: map['serverEdition'] as String,
      serverName: map['serverName'] as String,
      serverOperatingSystemVersion: map['serverOperatingSystemVersion'] as String,
      serverPlatform: map['serverPlatform'] as String,
      serverVersion: map['serverVersion'] as String,
    );
  }
}

