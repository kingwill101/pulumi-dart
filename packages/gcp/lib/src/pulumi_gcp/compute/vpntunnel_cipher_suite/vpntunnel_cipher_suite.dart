// ignore_for_file: unused_element, unnecessary_cast

import '../vpntunnel_cipher_suite_phase1/vpntunnel_cipher_suite_phase1.dart';
import '../vpntunnel_cipher_suite_phase2/vpntunnel_cipher_suite_phase2.dart';

class VPNTunnelCipherSuite {
  /// Cipher configuration for phase 1 of the IKE protocol.
  /// Structure is documented below.
  final VPNTunnelCipherSuitePhase1? phase1;

  /// Cipher configuration for phase 2 of the IKE protocol.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedCipherSuitePhase1"" pulumi-lang-dotnet=""NestedCipherSuitePhase1"" pulumi-lang-go=""nestedCipherSuitePhase1"" pulumi-lang-python=""nested_cipher_suite_phase1"" pulumi-lang-yaml=""nestedCipherSuitePhase1"" pulumi-lang-java=""nestedCipherSuitePhase1"">"nested_cipher_suite_phase1"</span>></a>The <span pulumi-lang-nodejs="`phase1`" pulumi-lang-dotnet="`Phase1`" pulumi-lang-go="`phase1`" pulumi-lang-python="`phase1`" pulumi-lang-yaml="`phase1`" pulumi-lang-java="`phase1`">`phase1`</span> block supports:
  final VPNTunnelCipherSuitePhase2? phase2;

  VPNTunnelCipherSuite({
    this.phase1,
    this.phase2,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final phase1Value = phase1;
    if (phase1Value != null) {
      map['phase1'] = phase1Value.toMap();
    }
    final phase2Value = phase2;
    if (phase2Value != null) {
      map['phase2'] = phase2Value.toMap();
    }
    return map;
  }

  factory VPNTunnelCipherSuite.fromMap(Map<String, dynamic> map) {
    return VPNTunnelCipherSuite(
      phase1: map['phase1'] == null
          ? null
          : VPNTunnelCipherSuitePhase1.fromMap(
              (map['phase1'] as Map).cast<String, dynamic>()),
      phase2: map['phase2'] == null
          ? null
          : VPNTunnelCipherSuitePhase2.fromMap(
              (map['phase2'] as Map).cast<String, dynamic>()),
    );
  }
}
