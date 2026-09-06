// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationRuntimeConnectionInfo.
class GetIntegrationRuntimeConnectionInfoResult {
  /// The on-premises integration runtime host URL.
  final String? hostServiceUri;
  /// The integration runtime SSL certificate thumbprint. Click-Once application uses it to do server validation.
  final String? identityCertThumbprint;
  /// Whether the identity certificate is expired.
  final bool? isIdentityCertExprired;
  /// The public key for encrypting a credential when transferring the credential to the integration runtime.
  final String? publicKey;
  /// The token generated in service. Callers use this token to authenticate to integration runtime.
  final String? serviceToken;
  /// The integration runtime version.
  final String? version;

  /// Creates a new [GetIntegrationRuntimeConnectionInfoResult].
  /// [hostServiceUri] The on-premises integration runtime host URL.
  /// [identityCertThumbprint] The integration runtime SSL certificate thumbprint. Click-Once application uses it to do server validation.
  /// [isIdentityCertExprired] Whether the identity certificate is expired.
  /// [publicKey] The public key for encrypting a credential when transferring the credential to the integration runtime.
  /// [serviceToken] The token generated in service. Callers use this token to authenticate to integration runtime.
  /// [version] The integration runtime version.
  const GetIntegrationRuntimeConnectionInfoResult({
    this.hostServiceUri,
    this.identityCertThumbprint,
    this.isIdentityCertExprired,
    this.publicKey,
    this.serviceToken,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostServiceUri': ?hostServiceUri,
      'identityCertThumbprint': ?identityCertThumbprint,
      'isIdentityCertExprired': ?isIdentityCertExprired,
      'publicKey': ?publicKey,
      'serviceToken': ?serviceToken,
      'version': ?version,
    };
  }

  factory GetIntegrationRuntimeConnectionInfoResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationRuntimeConnectionInfoResult(
      hostServiceUri: (() { final guardedValue = map['hostServiceUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityCertThumbprint: (() { final guardedValue = map['identityCertThumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isIdentityCertExprired: (() { final guardedValue = map['isIdentityCertExprired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceToken: (() { final guardedValue = map['serviceToken']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
