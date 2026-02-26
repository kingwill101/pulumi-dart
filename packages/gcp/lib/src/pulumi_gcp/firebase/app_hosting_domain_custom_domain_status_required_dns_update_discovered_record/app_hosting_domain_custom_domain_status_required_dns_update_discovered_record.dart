// ignore_for_file: unused_element, unnecessary_cast

class AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord {
  /// (Output)
  /// The domain the record pertains to, e.g. `foo.bar.com.`.
  final String? domainName;

  /// (Output)
  /// The data of the record. The meaning of the value depends on record type:
  /// - A and AAAA: IP addresses for the domain.
  /// - CNAME: Another domain to check for records.
  /// - TXT: Arbitrary text strings associated with the domain. App Hosting
  /// uses TXT records to determine which Firebase projects have
  /// permission to act on the domain's behalf.
  /// - CAA: The record's flags, tag, and value, e.g. `0 issue "pki.goog"`.
  final String? rdata;

  /// (Output)
  /// An enum that indicates which state(s) this DNS record applies to. Populated
  /// for all records with an `ADD` or `REMOVE` required action.
  final List<String>? relevantStates;

  /// (Output)
  /// An enum that indicates the a required action for this record. Populated
  /// when the record is part of a required change in a  `DnsUpdates`
  /// <span pulumi-lang-nodejs="`discovered`" pulumi-lang-dotnet="`Discovered`" pulumi-lang-go="`discovered`" pulumi-lang-python="`discovered`" pulumi-lang-yaml="`discovered`" pulumi-lang-java="`discovered`">`discovered`</span> or <span pulumi-lang-nodejs="`desired`" pulumi-lang-dotnet="`Desired`" pulumi-lang-go="`desired`" pulumi-lang-python="`desired`" pulumi-lang-yaml="`desired`" pulumi-lang-java="`desired`">`desired`</span> record set.
  /// Possible values:
  /// NONE
  /// ADD
  /// REMOVE
  final String? requiredAction;

  /// (Output)
  /// The record's type, which determines what data the record contains.
  /// Possible values:
  /// A
  /// CNAME
  /// TXT
  /// AAAA
  /// CAA
  final String? type;

  AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord({
    this.domainName,
    this.rdata,
    this.relevantStates,
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
    final relevantStatesValue = relevantStates;
    if (relevantStatesValue != null) {
      map['relevantStates'] = relevantStatesValue;
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

  factory AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord.fromMap(
      Map<String, dynamic> map) {
    return AppHostingDomainCustomDomainStatusRequiredDnsUpdateDiscoveredRecord(
      domainName:
          map['domainName'] == null ? null : map['domainName'] as String,
      rdata: map['rdata'] == null ? null : map['rdata'] as String,
      relevantStates: map['relevantStates'] == null
          ? null
          : (map['relevantStates'] as List).cast<String>(),
      requiredAction: map['requiredAction'] == null
          ? null
          : map['requiredAction'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
