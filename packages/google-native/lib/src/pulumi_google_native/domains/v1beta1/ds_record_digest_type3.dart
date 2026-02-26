/// The hash function used to generate the digest of the referenced DNSKEY.
enum DsRecordDigestType3 {
  digestTypeUnspecified("DIGEST_TYPE_UNSPECIFIED"),
  sha1("SHA1"),
  sha256("SHA256"),
  gost3411("GOST3411"),
  sha384("SHA384");

  const DsRecordDigestType3(this.value);
  final String value;

  static DsRecordDigestType3 fromValue(String value) {
    for (final item in DsRecordDigestType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DsRecordDigestType3 value: $value');
  }
}
