// ignore_for_file: unused_element, unnecessary_cast

class ManagedZoneDnssecConfigDefaultKeySpec {
  /// String mnemonic specifying the DNSSEC algorithm of this key
  /// Possible values are: <span pulumi-lang-nodejs="`ecdsap256sha256`" pulumi-lang-dotnet="`Ecdsap256sha256`" pulumi-lang-go="`ecdsap256sha256`" pulumi-lang-python="`ecdsap256sha256`" pulumi-lang-yaml="`ecdsap256sha256`" pulumi-lang-java="`ecdsap256sha256`">`ecdsap256sha256`</span>, <span pulumi-lang-nodejs="`ecdsap384sha384`" pulumi-lang-dotnet="`Ecdsap384sha384`" pulumi-lang-go="`ecdsap384sha384`" pulumi-lang-python="`ecdsap384sha384`" pulumi-lang-yaml="`ecdsap384sha384`" pulumi-lang-java="`ecdsap384sha384`">`ecdsap384sha384`</span>, <span pulumi-lang-nodejs="`rsasha1`" pulumi-lang-dotnet="`Rsasha1`" pulumi-lang-go="`rsasha1`" pulumi-lang-python="`rsasha1`" pulumi-lang-yaml="`rsasha1`" pulumi-lang-java="`rsasha1`">`rsasha1`</span>, <span pulumi-lang-nodejs="`rsasha256`" pulumi-lang-dotnet="`Rsasha256`" pulumi-lang-go="`rsasha256`" pulumi-lang-python="`rsasha256`" pulumi-lang-yaml="`rsasha256`" pulumi-lang-java="`rsasha256`">`rsasha256`</span>, <span pulumi-lang-nodejs="`rsasha512`" pulumi-lang-dotnet="`Rsasha512`" pulumi-lang-go="`rsasha512`" pulumi-lang-python="`rsasha512`" pulumi-lang-yaml="`rsasha512`" pulumi-lang-java="`rsasha512`">`rsasha512`</span>.
  final String? algorithm;

  /// Length of the keys in bits
  final int? keyLength;

  /// Specifies whether this is a key signing key (KSK) or a zone
  /// signing key (ZSK). Key signing keys have the Secure Entry
  /// Point flag set and, when active, will only be used to sign
  /// resource record sets of type DNSKEY. Zone signing keys do
  /// not have the Secure Entry Point flag set and will be used
  /// to sign all other types of resource record sets.
  /// Possible values are: `keySigning`, `zoneSigning`.
  final String? keyType;

  /// Identifies what kind of resource this is
  final String? kind;

  ManagedZoneDnssecConfigDefaultKeySpec({
    this.algorithm,
    this.keyLength,
    this.keyType,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final algorithmValue = algorithm;
    if (algorithmValue != null) {
      map['algorithm'] = algorithmValue;
    }
    final keyLengthValue = keyLength;
    if (keyLengthValue != null) {
      map['keyLength'] = keyLengthValue;
    }
    final keyTypeValue = keyType;
    if (keyTypeValue != null) {
      map['keyType'] = keyTypeValue;
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory ManagedZoneDnssecConfigDefaultKeySpec.fromMap(
      Map<String, dynamic> map) {
    return ManagedZoneDnssecConfigDefaultKeySpec(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      keyLength: map['keyLength'] == null ? null : map['keyLength'] as int,
      keyType: map['keyType'] == null ? null : map['keyType'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
