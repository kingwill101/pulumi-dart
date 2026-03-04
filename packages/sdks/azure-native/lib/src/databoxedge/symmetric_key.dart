// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret.dart';

/// Symmetric key for authentication.
class SymmetricKey {
  /// Connection string based on the symmetric key.
  final pulumi.Input<AsymmetricEncryptedSecret>? connectionString;

  /// Creates a new [SymmetricKey].
  /// [connectionString] Connection string based on the symmetric key.
  SymmetricKey({this.connectionString});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString':
          ?pulumi.Input.mapOptionalInputValue<
            AsymmetricEncryptedSecret,
            Map<String, dynamic>
          >(connectionString, (value) => value.toMap()),
    };
  }

  factory SymmetricKey.fromMap(Map<String, dynamic> map) {
    return SymmetricKey(
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AsymmetricEncryptedSecret.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
