// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret management settings of the machines in the pool.
class SecretsManagementSettings {
  /// Where to store certificates on the machine.
  final pulumi.Input<String>? certificateStoreLocation;
  /// Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
  final pulumi.Input<String>? certificateStoreName;
  /// Defines if the key of the certificates should be exportable.
  final pulumi.Input<bool> keyExportable;
  /// The list of certificates to install on all machines in the pool.
  final pulumi.Input<List<String>> observedCertificates;

  /// Creates a new [SecretsManagementSettings].
  /// [certificateStoreLocation] Where to store certificates on the machine.
  /// [certificateStoreName] Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
  /// [keyExportable] Defines if the key of the certificates should be exportable.
  /// [observedCertificates] The list of certificates to install on all machines in the pool.
  SecretsManagementSettings({
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

  factory SecretsManagementSettings.fromMap(Map<String, dynamic> map) {
    return SecretsManagementSettings(
      certificateStoreLocation: map['certificateStoreLocation'] == null ? null : (map['certificateStoreLocation']! as String).input(),
      certificateStoreName: map['certificateStoreName'] == null ? null : (map['certificateStoreName']! as String).input(),
      keyExportable: (map['keyExportable'] as bool).input(),
      observedCertificates: ((map['observedCertificates'] as List).cast<String>()).input(),
    );
  }
}

