// ignore_for_file: unused_element, unnecessary_cast


/// ExpressRouteLink Mac Security Configuration.
class ExpressRouteLinkMacSecConfigResponse {
  /// Keyvault Secret Identifier URL containing Mac security CAK key.
  final String? cakSecretIdentifier;
  /// Mac security cipher.
  final String? cipher;
  /// Keyvault Secret Identifier URL containing Mac security CKN key.
  final String? cknSecretIdentifier;
  /// Sci mode enabled/disabled.
  final String? sciState;

  /// Creates a new [ExpressRouteLinkMacSecConfigResponse].
  /// [cakSecretIdentifier] Keyvault Secret Identifier URL containing Mac security CAK key.
  /// [cipher] Mac security cipher.
  /// [cknSecretIdentifier] Keyvault Secret Identifier URL containing Mac security CKN key.
  /// [sciState] Sci mode enabled/disabled.
  ExpressRouteLinkMacSecConfigResponse({
    this.cakSecretIdentifier,
    this.cipher,
    this.cknSecretIdentifier,
    this.sciState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cakSecretIdentifier': ?cakSecretIdentifier,
      'cipher': ?cipher,
      'cknSecretIdentifier': ?cknSecretIdentifier,
      'sciState': ?sciState,
    };
  }

  factory ExpressRouteLinkMacSecConfigResponse.fromMap(Map<String, dynamic> map) {
    return ExpressRouteLinkMacSecConfigResponse(
      cakSecretIdentifier: map['cakSecretIdentifier'] == null ? null : map['cakSecretIdentifier'] as String,
      cipher: map['cipher'] == null ? null : map['cipher'] as String,
      cknSecretIdentifier: map['cknSecretIdentifier'] == null ? null : map['cknSecretIdentifier'] as String,
      sciState: map['sciState'] == null ? null : map['sciState'] as String,
    );
  }
}

