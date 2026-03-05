// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_identity_type.dart';

/// The encryption identity properties.
class EncryptionIdentity {
  /// The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  final pulumi.Input<EncryptionIdentityType> type;

  /// Creates a new [EncryptionIdentity].
  /// [type] The type of encryption being used. Currently the only supported type is 'SystemAssigned'.
  EncryptionIdentity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<EncryptionIdentityType, String>(type, (value) => value.wireValue),
    };
  }

  factory EncryptionIdentity.fromMap(Map<String, dynamic> map) {
    return EncryptionIdentity(
      type: pulumi.Input.fromValue(EncryptionIdentityType.fromValue(map['type']! as String)),
    );
  }
}

