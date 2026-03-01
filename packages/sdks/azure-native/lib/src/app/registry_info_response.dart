// ignore_for_file: unused_element, unnecessary_cast


/// Container App registry information.
class RegistryInfoResponse {
  /// registry server Url.
  final String? registryUrl;
  /// registry username.
  final String? registryUserName;

  /// Creates a new [RegistryInfoResponse].
  /// [registryUrl] registry server Url.
  /// [registryUserName] registry username.
  RegistryInfoResponse({
    this.registryUrl,
    this.registryUserName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryUrl': ?registryUrl,
      'registryUserName': ?registryUserName,
    };
  }

  factory RegistryInfoResponse.fromMap(Map<String, dynamic> map) {
    return RegistryInfoResponse(
      registryUrl: map['registryUrl'] == null ? null : map['registryUrl'] as String,
      registryUserName: map['registryUserName'] == null ? null : map['registryUserName'] as String,
    );
  }
}

