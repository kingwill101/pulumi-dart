// ignore_for_file: unused_element, unnecessary_cast

class OutboundConnectionRemoteDomainInfo {
  /// The name of the remote domain.
  final String domainName;

  /// The Account ID of the owner of the remote domain.
  final String ownerId;

  /// The region of the remote domain.
  final String region;

  OutboundConnectionRemoteDomainInfo({
    required this.domainName,
    required this.ownerId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['ownerId'] = ownerId;
    map['region'] = region;
    return map;
  }

  factory OutboundConnectionRemoteDomainInfo.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionRemoteDomainInfo(
      domainName: map['domainName'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
    );
  }
}
