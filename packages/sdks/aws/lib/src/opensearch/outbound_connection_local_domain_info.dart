// ignore_for_file: unused_element, unnecessary_cast


class OutboundConnectionLocalDomainInfo {
  /// The name of the local domain.
  final String domainName;
  /// The Account ID of the owner of the local domain.
  final String ownerId;
  /// The region of the local domain.
  final String region;

  /// Creates a new [OutboundConnectionLocalDomainInfo].
  /// [domainName] The name of the local domain.
  /// [ownerId] The Account ID of the owner of the local domain.
  /// [region] The region of the local domain.
  OutboundConnectionLocalDomainInfo({
    required this.domainName,
    required this.ownerId,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'ownerId': ownerId,
      'region': region,
    };
  }

  factory OutboundConnectionLocalDomainInfo.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionLocalDomainInfo(
      domainName: map['domainName'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
    );
  }
}

