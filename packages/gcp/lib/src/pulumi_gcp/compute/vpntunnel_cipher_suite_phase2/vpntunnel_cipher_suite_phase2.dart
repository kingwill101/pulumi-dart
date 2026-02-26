// ignore_for_file: unused_element, unnecessary_cast

class VPNTunnelCipherSuitePhase2 {
  /// Encryption algorithms.
  final List<String>? encryptions;

  /// Integrity algorithms.
  final List<String>? integrities;

  /// Perfect forward secrecy groups.
  final List<String>? pfs;

  VPNTunnelCipherSuitePhase2({
    this.encryptions,
    this.integrities,
    this.pfs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionsValue = encryptions;
    if (encryptionsValue != null) {
      map['encryptions'] = encryptionsValue;
    }
    final integritiesValue = integrities;
    if (integritiesValue != null) {
      map['integrities'] = integritiesValue;
    }
    final pfsValue = pfs;
    if (pfsValue != null) {
      map['pfs'] = pfsValue;
    }
    return map;
  }

  factory VPNTunnelCipherSuitePhase2.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuitePhase2(
      encryptions: map['encryptions'] == null
          ? null
          : (map['encryptions'] as List).cast<String>(),
      integrities: map['integrities'] == null
          ? null
          : (map['integrities'] as List).cast<String>(),
      pfs: map['pfs'] == null ? null : (map['pfs'] as List).cast<String>(),
    );
  }
}
