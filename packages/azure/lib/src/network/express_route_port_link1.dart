// ignore_for_file: unused_element, unnecessary_cast


class ExpressRoutePortLink1 {
  /// Whether enable administration state on the Express Route Port Link? Defaults to `false`.
  final bool? adminEnabled;
  /// The connector type of the Express Route Port Link.
  final String? connectorType;
  /// The ID of this Express Route Port Link.
  final String? id;
  /// The interface name of the Azure router associated with the Express Route Port Link.
  final String? interfaceName;
  /// The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
  final String? macsecCakKeyvaultSecretId;
  /// The MACSec cipher used for this Express Route Port Link. Possible values are `GcmAes128`, `GcmAes256`, `GcmAesXpn128` and `GcmAesXpn256`. Defaults to `GcmAes128`.
  final String? macsecCipher;
  /// The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
  final String? macsecCknKeyvaultSecretId;
  /// Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to `false`.
  ///
  /// > **Note:** `macsec_ckn_keyvault_secret_id` and `macsec_cak_keyvault_secret_id` should be used together with `identity`, so that the Express Route Port instance have the right permission to access the Key Vault.
  final bool? macsecSciEnabled;
  /// The ID that maps from the Express Route Port Link to the patch panel port.
  final String? patchPanelId;
  /// The ID that maps from the patch panel port to the rack.
  final String? rackId;
  /// The name of the Azure router associated with the Express Route Port Link.
  final String? routerName;

  /// Creates a new [ExpressRoutePortLink1].
  /// [adminEnabled] Whether enable administration state on the Express Route Port Link? Defaults to `false`.
  /// [connectorType] The connector type of the Express Route Port Link.
  /// [id] The ID of this Express Route Port Link.
  /// [interfaceName] The interface name of the Azure router associated with the Express Route Port Link.
  /// [macsecCakKeyvaultSecretId] The ID of the Key Vault Secret that contains the Mac security CAK key for this Express Route Port Link.
  /// [macsecCipher] The MACSec cipher used for this Express Route Port Link. Possible values are `GcmAes128`, `GcmAes256`, `GcmAesXpn128` and `GcmAesXpn256`. Defaults to `GcmAes128`.
  /// [macsecCknKeyvaultSecretId] The ID of the Key Vault Secret that contains the MACSec CKN key for this Express Route Port Link.
  /// [macsecSciEnabled] Should Secure Channel Identifier on the Express Route Port Link be enabled? Defaults to `false`.
  /// [patchPanelId] The ID that maps from the Express Route Port Link to the patch panel port.
  /// [rackId] The ID that maps from the patch panel port to the rack.
  /// [routerName] The name of the Azure router associated with the Express Route Port Link.
  ExpressRoutePortLink1({
    this.adminEnabled,
    this.connectorType,
    this.id,
    this.interfaceName,
    this.macsecCakKeyvaultSecretId,
    this.macsecCipher,
    this.macsecCknKeyvaultSecretId,
    this.macsecSciEnabled,
    this.patchPanelId,
    this.rackId,
    this.routerName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminEnabled': ?adminEnabled,
      'connectorType': ?connectorType,
      'id': ?id,
      'interfaceName': ?interfaceName,
      'macsecCakKeyvaultSecretId': ?macsecCakKeyvaultSecretId,
      'macsecCipher': ?macsecCipher,
      'macsecCknKeyvaultSecretId': ?macsecCknKeyvaultSecretId,
      'macsecSciEnabled': ?macsecSciEnabled,
      'patchPanelId': ?patchPanelId,
      'rackId': ?rackId,
      'routerName': ?routerName,
    };
  }

  factory ExpressRoutePortLink1.fromMap(Map<String, dynamic> map) {
    return ExpressRoutePortLink1(
      adminEnabled: map['adminEnabled'] == null ? null : map['adminEnabled'] as bool,
      connectorType: map['connectorType'] == null ? null : map['connectorType'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      interfaceName: map['interfaceName'] == null ? null : map['interfaceName'] as String,
      macsecCakKeyvaultSecretId: map['macsecCakKeyvaultSecretId'] == null ? null : map['macsecCakKeyvaultSecretId'] as String,
      macsecCipher: map['macsecCipher'] == null ? null : map['macsecCipher'] as String,
      macsecCknKeyvaultSecretId: map['macsecCknKeyvaultSecretId'] == null ? null : map['macsecCknKeyvaultSecretId'] as String,
      macsecSciEnabled: map['macsecSciEnabled'] == null ? null : map['macsecSciEnabled'] as bool,
      patchPanelId: map['patchPanelId'] == null ? null : map['patchPanelId'] as String,
      rackId: map['rackId'] == null ? null : map['rackId'] as String,
      routerName: map['routerName'] == null ? null : map['routerName'] as String,
    );
  }
}

