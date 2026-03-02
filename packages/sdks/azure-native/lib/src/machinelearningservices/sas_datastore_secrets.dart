// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datastore SAS secrets.
class SasDatastoreSecrets {
  /// Storage container SAS token.
  final pulumi.Input<String>? sasToken;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'Sas'.
  final pulumi.Input<String> secretsType;

  /// Creates a new [SasDatastoreSecrets].
  /// [sasToken] Storage container SAS token.
  /// [secretsType] Enum to determine the datastore secrets type.
  SasDatastoreSecrets({
    this.sasToken,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasToken': ?sasToken,
      'secretsType': secretsType,
    };
  }

  factory SasDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return SasDatastoreSecrets(
      sasToken: map['sasToken'] == null ? null : (map['sasToken']! as String).input(),
      secretsType: (map['secretsType'] as String).input(),
    );
  }
}

