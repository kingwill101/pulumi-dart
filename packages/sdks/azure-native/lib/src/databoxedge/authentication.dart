// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'symmetric_key.dart';

/// Authentication mechanism for IoT devices.
class Authentication {
  /// Symmetric key for authentication.
  final pulumi.Input<SymmetricKey>? symmetricKey;

  /// Creates a new [Authentication].
  /// [symmetricKey] Symmetric key for authentication.
  Authentication({
    this.symmetricKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'symmetricKey': ?pulumi.Input.mapOptionalInputValue<SymmetricKey, Map<String, dynamic>>(symmetricKey, (value) => value.toMap()),
    };
  }

  factory Authentication.fromMap(Map<String, dynamic> map) {
    return Authentication(
      symmetricKey: map['symmetricKey'] == null ? null : (SymmetricKey.fromMap((map['symmetricKey']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

