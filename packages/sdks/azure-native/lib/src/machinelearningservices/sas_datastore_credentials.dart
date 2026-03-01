// ignore_for_file: unused_element, unnecessary_cast

import 'sas_datastore_secrets.dart';

/// SAS datastore credentials configuration.
class SasDatastoreCredentials {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Sas'.
  final String credentialsType;
  /// [Required] Storage container secrets.
  final SasDatastoreSecrets secrets;

  /// Creates a new [SasDatastoreCredentials].
  /// [credentialsType] Enum to determine the datastore credentials type.
  /// [secrets] [Required] Storage container secrets.
  SasDatastoreCredentials({
    required this.credentialsType,
    required this.secrets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsType': credentialsType,
      'secrets': secrets.toMap(),
    };
  }

  factory SasDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return SasDatastoreCredentials(
      credentialsType: map['credentialsType'] as String,
      secrets: SasDatastoreSecrets.fromMap((map['secrets'] as Map).cast<String, dynamic>()),
    );
  }
}

