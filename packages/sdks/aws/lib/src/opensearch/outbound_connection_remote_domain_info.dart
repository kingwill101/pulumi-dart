// ignore_for_file: unused_element, unnecessary_cast


class OutboundConnectionRemoteDomainInfo {
  /// The name of the remote domain.
  final String domainName;
  /// The Account ID of the owner of the remote domain.
  final String ownerId;
  /// The region of the remote domain.
  final String region;

  /// Creates a new [OutboundConnectionRemoteDomainInfo].
  /// [domainName] The name of the remote domain.
  /// [ownerId] The Account ID of the owner of the remote domain.
  /// [region] The region of the remote domain.
  OutboundConnectionRemoteDomainInfo({
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

  factory OutboundConnectionRemoteDomainInfo.fromMap(Map<String, dynamic> map) {
    return OutboundConnectionRemoteDomainInfo(
      domainName: map['domainName'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
    );
  }
}

