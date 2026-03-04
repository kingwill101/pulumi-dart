// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sas_datastore_secrets.dart';

/// SAS datastore credentials configuration.
class SasDatastoreCredentials {
  /// Enum to determine the datastore credentials type.
  /// Expected value is 'Sas'.
  final pulumi.Input<String> credentialsType;

  /// [Required] Storage container secrets.
  final pulumi.Input<SasDatastoreSecrets> secrets;

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
      'secrets':
          pulumi.Input.mapInputValue<SasDatastoreSecrets, Map<String, dynamic>>(
            secrets,
            (value) => value.toMap(),
          ),
    };
  }

  factory SasDatastoreCredentials.fromMap(Map<String, dynamic> map) {
    return SasDatastoreCredentials(
      credentialsType: pulumi.Input.fromValue(map['credentialsType'] as String),
      secrets: pulumi.Input.fromValue(
        SasDatastoreSecrets.fromMap(
          (map['secrets']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
