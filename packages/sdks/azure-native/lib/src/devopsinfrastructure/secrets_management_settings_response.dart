// ignore_for_file: unused_element, unnecessary_cast


/// The secret management settings of the machines in the pool.
class SecretsManagementSettingsResponse {
  /// Where to store certificates on the machine.
  final String? certificateStoreLocation;
  /// Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
  final String? certificateStoreName;
  /// Defines if the key of the certificates should be exportable.
  final bool keyExportable;
  /// The list of certificates to install on all machines in the pool.
  final List<String> observedCertificates;

  /// Creates a new [SecretsManagementSettingsResponse].
  /// [certificateStoreLocation] Where to store certificates on the machine.
  /// [certificateStoreName] Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
  /// [keyExportable] Defines if the key of the certificates should be exportable.
  /// [observedCertificates] The list of certificates to install on all machines in the pool.
  SecretsManagementSettingsResponse({
    this.certificateStoreLocation,
    this.certificateStoreName,
    required this.keyExportable,
    required this.observedCertificates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateStoreLocation': ?certificateStoreLocation,
      'certificateStoreName': ?certificateStoreName,
      'keyExportable': keyExportable,
      'observedCertificates': observedCertificates,
    };
  }

  factory SecretsManagementSettingsResponse.fromMap(Map<String, dynamic> map) {
    return SecretsManagementSettingsResponse(
      certificateStoreLocation: map['certificateStoreLocation'] == null ? null : map['certificateStoreLocation'] as String,
      certificateStoreName: map['certificateStoreName'] == null ? null : map['certificateStoreName'] as String,
      keyExportable: map['keyExportable'] as bool,
      observedCertificates: (map['observedCertificates'] as List).cast<String>(),
    );
  }
}

