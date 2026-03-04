// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Transparent data encryption information.
class K8stransparentDataEncryptionResponse {
  /// Transparent data encryption mode. Can be Service Managed, Customer managed or disabled
  final pulumi.Input<String>? mode;

  /// Protector secret for customer managed Transparent data encryption mode
  final pulumi.Input<String>? protectorSecret;

  /// Creates a new [K8stransparentDataEncryptionResponse].
  /// [mode] Transparent data encryption mode. Can be Service Managed, Customer managed or disabled
  /// [protectorSecret] Protector secret for customer managed Transparent data encryption mode
  K8stransparentDataEncryptionResponse({this.mode, this.protectorSecret});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': ?mode,
      'protectorSecret': ?protectorSecret,
    };
  }

  factory K8stransparentDataEncryptionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return K8stransparentDataEncryptionResponse(
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectorSecret: (() {
        final guardedValue = map['protectorSecret'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
