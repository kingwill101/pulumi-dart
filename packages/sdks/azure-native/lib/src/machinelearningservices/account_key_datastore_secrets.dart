// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Datastore account key secrets.
class AccountKeyDatastoreSecrets {
  /// Storage account key.
  final pulumi.Input<String?>? key;
  /// Enum to determine the datastore secrets type.
  /// Expected value is 'AccountKey'.
  final pulumi.Input<String> secretsType;

  /// Creates a new [AccountKeyDatastoreSecrets].
  /// [key] Storage account key.
  /// [secretsType] Enum to determine the datastore secrets type.
  const AccountKeyDatastoreSecrets({
    this.key,
    required this.secretsType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'secretsType': secretsType,
    };
  }

  factory AccountKeyDatastoreSecrets.fromMap(Map<String, dynamic> map) {
    return AccountKeyDatastoreSecrets(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretsType: pulumi.Input.fromValue(map['secretsType'] as String),
    );
  }
}
