// ignore_for_file: unused_element, unnecessary_cast


/// Container App registry information.
class RegistryInfo {
  /// registry secret.
  final String? registryPassword;
  /// registry server Url.
  final String? registryUrl;
  /// registry username.
  final String? registryUserName;

  /// Creates a new [RegistryInfo].
  /// [registryPassword] registry secret.
  /// [registryUrl] registry server Url.
  /// [registryUserName] registry username.
  RegistryInfo({
    this.registryPassword,
    this.registryUrl,
    this.registryUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryPassword': ?registryPassword,
      'registryUrl': ?registryUrl,
      'registryUserName': ?registryUserName,
    };
  }

  factory RegistryInfo.fromMap(Map<String, dynamic> map) {
    return RegistryInfo(
      registryPassword: map['registryPassword'] == null ? null : map['registryPassword'] as String,
      registryUrl: map['registryUrl'] == null ? null : map['registryUrl'] as String,
      registryUserName: map['registryUserName'] == null ? null : map['registryUserName'] as String,
    );
  }
}

