// ignore_for_file: unused_element, unnecessary_cast


/// Contains information about SSH certificate public key data.
class ContainerServiceSshPublicKeyResponse {
  /// Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  final String keyData;

  /// Creates a new [ContainerServiceSshPublicKeyResponse].
  /// [keyData] Certificate public key used to authenticate with VMs through SSH. The certificate must be in PEM format with or without headers.
  ContainerServiceSshPublicKeyResponse({
    required this.keyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData': keyData,
    };
  }

  factory ContainerServiceSshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return ContainerServiceSshPublicKeyResponse(
      keyData: map['keyData'] as String,
    );
  }
}

