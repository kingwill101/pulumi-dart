// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpRanges.
class GetIpRangesResult {
  /// Lexically ordered list of CIDR blocks.
  final List<String> cidrBlocks;

  /// Publication time of the IP ranges (e.g., `2016-08-03-23-46-05`).
  final String createDate;
  final String id;

  /// Lexically ordered list of IPv6 CIDR blocks.
  final List<String> ipv6CidrBlocks;
  final List<String>? regions;
  final List<String> services;

  /// Publication time of the IP ranges, in Unix epoch time format
  /// (e.g., <span pulumi-lang-nodejs="`1470267965`" pulumi-lang-dotnet="`1470267965`" pulumi-lang-go="`1470267965`" pulumi-lang-python="`1470267965`" pulumi-lang-yaml="`1470267965`" pulumi-lang-java="`1470267965`">`1470267965`</span>).
  final int syncToken;
  final String? url;

  GetIpRangesResult({
    required this.cidrBlocks,
    required this.createDate,
    required this.id,
    required this.ipv6CidrBlocks,
    this.regions,
    required this.services,
    required this.syncToken,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cidrBlocks'] = cidrBlocks;
    map['createDate'] = createDate;
    map['id'] = id;
    map['ipv6CidrBlocks'] = ipv6CidrBlocks;
    final regionsValue = regions;
    if (regionsValue != null) {
      map['regions'] = regionsValue;
    }
    map['services'] = services;
    map['syncToken'] = syncToken;
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory GetIpRangesResult.fromMap(Map<String, dynamic> map) {
    return GetIpRangesResult(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      createDate: map['createDate'] as String,
      id: map['id'] as String,
      ipv6CidrBlocks: (map['ipv6CidrBlocks'] as List).cast<String>(),
      regions: map['regions'] == null
          ? null
          : (map['regions'] as List).cast<String>(),
      services: (map['services'] as List).cast<String>(),
      syncToken: map['syncToken'] as int,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
