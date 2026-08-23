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
  /// (e.g., `1470267965`).
  final int syncToken;
  final String? url;

  /// Creates a new [GetIpRangesResult].
  /// [cidrBlocks] Lexically ordered list of CIDR blocks.
  /// [createDate] Publication time of the IP ranges (e.g., `2016-08-03-23-46-05`).
  /// [id] Required.
  /// [ipv6CidrBlocks] Lexically ordered list of IPv6 CIDR blocks.
  /// [regions] Optional.
  /// [services] Required.
  /// [syncToken] Publication time of the IP ranges, in Unix epoch time format
  /// [url] Optional.
  const GetIpRangesResult({
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
    return <String, dynamic>{
      'cidrBlocks': cidrBlocks,
      'createDate': createDate,
      'id': id,
      'ipv6CidrBlocks': ipv6CidrBlocks,
      'regions': ?regions,
      'services': services,
      'syncToken': syncToken,
      'url': ?url,
    };
  }

  factory GetIpRangesResult.fromMap(Map<String, dynamic> map) {
    return GetIpRangesResult(
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      createDate: map['createDate'] as String,
      id: map['id'] as String,
      ipv6CidrBlocks: (map['ipv6CidrBlocks'] as List).cast<String>(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      services: (map['services'] as List).cast<String>(),
      syncToken: map['syncToken'] as int,
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
