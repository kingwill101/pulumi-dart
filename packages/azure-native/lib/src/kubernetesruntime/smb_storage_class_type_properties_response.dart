// ignore_for_file: unused_element, unnecessary_cast


/// The properties of SMB StorageClass
class SmbStorageClassTypePropertiesResponse {
  /// Server domain
  final String? domain;
  /// Server password
  final String? password;
  /// SMB Source
  final String source;
  /// Sub directory under share. If the sub directory doesn't exist, driver will create it
  final String? subDir;
  /// Type of a storage class
  /// Expected value is 'SMB'.
  final String type;
  /// Server username
  final String? username;

  /// Creates a new [SmbStorageClassTypePropertiesResponse].
  /// [domain] Server domain
  /// [password] Server password
  /// [source] SMB Source
  /// [subDir] Sub directory under share. If the sub directory doesn't exist, driver will create it
  /// [type] Type of a storage class
  /// [username] Server username
  SmbStorageClassTypePropertiesResponse({
    this.domain,
    this.password,
    required this.source,
    this.subDir,
    required this.type,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'password': ?password,
      'source': source,
      'subDir': ?subDir,
      'type': type,
      'username': ?username,
    };
  }

  factory SmbStorageClassTypePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SmbStorageClassTypePropertiesResponse(
      domain: map['domain'] == null ? null : map['domain'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      source: map['source'] as String,
      subDir: map['subDir'] == null ? null : map['subDir'] as String,
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

