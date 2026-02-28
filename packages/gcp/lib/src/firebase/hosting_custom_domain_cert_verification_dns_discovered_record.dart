// ignore_for_file: unused_element, unnecessary_cast

class HostingCustomDomainCertVerificationDnsDiscoveredRecord {
  /// The domain name the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// The data of the record. The meaning of the value depends on record type:
  /// - A and AAAA: IP addresses for the domain name.
  /// - CNAME: Another domain to check for records.
  /// - TXT: Arbitrary text strings associated with the domain name. Hosting
  /// uses TXT records to determine a which Firebase Projects have
  /// permission to act on the domain name's behalf.
  /// - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  final String? rdata;

  /// Indicates the a required action for this record.
  final String? requiredAction;

  /// The record's type, which determines what data the record contains.
  final String? type;

  /// Creates a new [HostingCustomDomainCertVerificationDnsDiscoveredRecord].
  /// [domainName] The domain name the record pertains to, e.g. `foo.bar.com.`.
  /// [rdata] The data of the record. The meaning of the value depends on record type:
  /// [requiredAction] Indicates the a required action for this record.
  /// [type] The record's type, which determines what data the record contains.
  HostingCustomDomainCertVerificationDnsDiscoveredRecord({
    this.domainName,
    this.rdata,
    this.requiredAction,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainNameValue = domainName;
    if (domainNameValue != null) {
      map['domainName'] = domainNameValue;
    }
    final rdataValue = rdata;
    if (rdataValue != null) {
      map['rdata'] = rdataValue;
    }
    final requiredActionValue = requiredAction;
    if (requiredActionValue != null) {
      map['requiredAction'] = requiredActionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory HostingCustomDomainCertVerificationDnsDiscoveredRecord.fromMap(
      Map<String, dynamic> map) {
    return HostingCustomDomainCertVerificationDnsDiscoveredRecord(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      rdata: map['rdata'] == null ? null : map['rdata'] as String,
      requiredAction: map['requiredAction'] == null
          ? null
          : map['requiredAction'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
