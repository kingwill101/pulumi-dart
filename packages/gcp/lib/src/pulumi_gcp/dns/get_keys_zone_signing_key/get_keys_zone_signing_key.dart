// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_keys_zone_signing_key_digest/get_keys_zone_signing_key_digest.dart';

class GetKeysZoneSigningKey {
  /// String mnemonic specifying the DNSSEC algorithm of this key. Immutable after creation time. Possible values are <span pulumi-lang-nodejs="`ecdsap256sha256`" pulumi-lang-dotnet="`Ecdsap256sha256`" pulumi-lang-go="`ecdsap256sha256`" pulumi-lang-python="`ecdsap256sha256`" pulumi-lang-yaml="`ecdsap256sha256`" pulumi-lang-java="`ecdsap256sha256`">`ecdsap256sha256`</span>, <span pulumi-lang-nodejs="`ecdsap384sha384`" pulumi-lang-dotnet="`Ecdsap384sha384`" pulumi-lang-go="`ecdsap384sha384`" pulumi-lang-python="`ecdsap384sha384`" pulumi-lang-yaml="`ecdsap384sha384`" pulumi-lang-java="`ecdsap384sha384`">`ecdsap384sha384`</span>, <span pulumi-lang-nodejs="`rsasha1`" pulumi-lang-dotnet="`Rsasha1`" pulumi-lang-go="`rsasha1`" pulumi-lang-python="`rsasha1`" pulumi-lang-yaml="`rsasha1`" pulumi-lang-java="`rsasha1`">`rsasha1`</span>, <span pulumi-lang-nodejs="`rsasha256`" pulumi-lang-dotnet="`Rsasha256`" pulumi-lang-go="`rsasha256`" pulumi-lang-python="`rsasha256`" pulumi-lang-yaml="`rsasha256`" pulumi-lang-java="`rsasha256`">`rsasha256`</span>, and <span pulumi-lang-nodejs="`rsasha512`" pulumi-lang-dotnet="`Rsasha512`" pulumi-lang-go="`rsasha512`" pulumi-lang-python="`rsasha512`" pulumi-lang-yaml="`rsasha512`" pulumi-lang-java="`rsasha512`">`rsasha512`</span>.
  final String algorithm;

  /// The time that this resource was created in the control plane. This is in RFC3339 text format.
  final String creationTime;

  /// A mutable string of at most 1024 characters associated with this resource for the user's convenience.
  final String description;

  /// A list of cryptographic hashes of the DNSKEY resource record associated with this DnsKey. These digests are needed to construct a DS record that points at this DNS key. Each contains:
  final List<GetKeysZoneSigningKeyDigest> digests;

  /// Unique identifier for the resource; defined by the server.
  final String id;

  /// Active keys will be used to sign subsequent changes to the ManagedZone. Inactive keys will still be present as DNSKEY Resource Records for the use of resolvers validating existing signatures.
  final bool isActive;

  /// Length of the key in bits. Specified at creation time then immutable.
  final int keyLength;

  /// The key tag is a non-cryptographic hash of the a DNSKEY resource record associated with this DnsKey. The key tag can be used to identify a DNSKEY more quickly (but it is not a unique identifier). In particular, the key tag is used in a parent zone's DS record to point at the DNSKEY in this child ManagedZone. The key tag is a number in the range [0, 65535] and the algorithm to calculate it is specified in RFC4034 Appendix B.
  final int keyTag;

  /// Base64 encoded public half of this key.
  final String publicKey;

  GetKeysZoneSigningKey({
    required this.algorithm,
    required this.creationTime,
    required this.description,
    required this.digests,
    required this.id,
    required this.isActive,
    required this.keyLength,
    required this.keyTag,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['algorithm'] = algorithm;
    map['creationTime'] = creationTime;
    map['description'] = description;
    map['digests'] =
        Input.encodeList<GetKeysZoneSigningKeyDigest, Map<String, dynamic>>(
            digests, (value) => value.toMap());
    map['id'] = id;
    map['isActive'] = isActive;
    map['keyLength'] = keyLength;
    map['keyTag'] = keyTag;
    map['publicKey'] = publicKey;
    return map;
  }

  factory GetKeysZoneSigningKey.fromMap(Map<String, dynamic> map) {
    return GetKeysZoneSigningKey(
      algorithm: map['algorithm'] as String,
      creationTime: map['creationTime'] as String,
      description: map['description'] as String,
      digests: Input.decodeList<GetKeysZoneSigningKeyDigest>(
          map['digests'],
          (value) => GetKeysZoneSigningKeyDigest.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      isActive: map['isActive'] as bool,
      keyLength: map['keyLength'] as int,
      keyTag: map['keyTag'] as int,
      publicKey: map['publicKey'] as String,
    );
  }
}
