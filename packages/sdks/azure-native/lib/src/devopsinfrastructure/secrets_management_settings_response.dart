// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret management settings of the machines in the pool.
class SecretsManagementSettingsResponse {
  /// Where to store certificates on the machine.
  final pulumi.Input<String>? certificateStoreLocation;

  /// Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
  final pulumi.Input<String>? certificateStoreName;

  /// Defines if the key of the certificates should be exportable.
  final pulumi.Input<bool> keyExportable;

  /// The list of certificates to install on all machines in the pool.
  final pulumi.Input<List<String>> observedCertificates;

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
      certificateStoreLocation: (() {
        final guardedValue = map['certificateStoreLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateStoreName: (() {
        final guardedValue = map['certificateStoreName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyExportable: pulumi.Input.fromValue(map['keyExportable'] as bool),
      observedCertificates: pulumi.Input.fromValue(
        (map['observedCertificates'] as List).cast<String>(),
      ),
    );
  }
}
