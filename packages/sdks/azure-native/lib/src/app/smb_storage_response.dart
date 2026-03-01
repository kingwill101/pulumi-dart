// ignore_for_file: unused_element, unnecessary_cast


/// SMB storage properties
class SmbStorageResponse {
  /// Access mode for storage
  final String? accessMode;
  /// The domain name for the user.
  final String? domain;
  /// The host name or IP address of the SMB server.
  final String? host;
  /// The password for the user.
  final String? password;
  /// The path to the SMB shared folder.
  final String? shareName;
  /// The user to log on to the SMB server.
  final String? username;

  /// Creates a new [SmbStorageResponse].
  /// [accessMode] Access mode for storage
  /// [domain] The domain name for the user.
  /// [host] The host name or IP address of the SMB server.
  /// [password] The password for the user.
  /// [shareName] The path to the SMB shared folder.
  /// [username] The user to log on to the SMB server.
  SmbStorageResponse({
    this.accessMode,
    this.domain,
    this.host,
    this.password,
    this.shareName,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessMode': ?accessMode,
      'domain': ?domain,
      'host': ?host,
      'password': ?password,
      'shareName': ?shareName,
      'username': ?username,
    };
  }

  factory SmbStorageResponse.fromMap(Map<String, dynamic> map) {
    return SmbStorageResponse(
      accessMode: map['accessMode'] == null ? null : map['accessMode'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      shareName: map['shareName'] == null ? null : map['shareName'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

