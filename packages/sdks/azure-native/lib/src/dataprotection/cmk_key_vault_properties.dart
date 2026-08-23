// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Key Vault which hosts CMK
class CmkKeyVaultProperties {
  /// The key uri of the Customer Managed Key
  final pulumi.Input<String>? keyUri;

  /// Creates a new [CmkKeyVaultProperties].
  /// [keyUri] The key uri of the Customer Managed Key
  const CmkKeyVaultProperties({
    this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': ?keyUri,
    };
  }

  factory CmkKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return CmkKeyVaultProperties(
      keyUri: (() { final guardedValue = map['keyUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
