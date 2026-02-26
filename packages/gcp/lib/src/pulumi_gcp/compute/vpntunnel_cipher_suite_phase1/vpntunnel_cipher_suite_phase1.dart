// ignore_for_file: unused_element, unnecessary_cast

class VPNTunnelCipherSuitePhase1 {
  /// Diffie-Hellman groups.
  final List<String>? dhs;

  /// Encryption algorithms.
  final List<String>? encryptions;

  /// Integrity algorithms.
  final List<String>? integrities;

  /// Pseudo-random functions.
  final List<String>? prves;

  VPNTunnelCipherSuitePhase1({
    this.dhs,
    this.encryptions,
    this.integrities,
    this.prves,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dhsValue = dhs;
    if (dhsValue != null) {
      map['dhs'] = dhsValue;
    }
    final encryptionsValue = encryptions;
    if (encryptionsValue != null) {
      map['encryptions'] = encryptionsValue;
    }
    final integritiesValue = integrities;
    if (integritiesValue != null) {
      map['integrities'] = integritiesValue;
    }
    final prvesValue = prves;
    if (prvesValue != null) {
      map['prves'] = prvesValue;
    }
    return map;
  }

  factory VPNTunnelCipherSuitePhase1.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuitePhase1(
      dhs: map['dhs'] == null ? null : (map['dhs'] as List).cast<String>(),
      encryptions: map['encryptions'] == null
          ? null
          : (map['encryptions'] as List).cast<String>(),
      integrities: map['integrities'] == null
          ? null
          : (map['integrities'] as List).cast<String>(),
      prves:
          map['prves'] == null ? null : (map['prves'] as List).cast<String>(),
    );
  }
}
