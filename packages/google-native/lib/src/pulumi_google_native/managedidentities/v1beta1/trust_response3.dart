// ignore_for_file: unused_element, unnecessary_cast

/// Represents a relationship between two domains. This allows a controller in one domain to authenticate a user in another domain.
class TrustResponse3 {
  /// The time the instance was created.
  final String createTime;

  /// The last heartbeat time when the trust was known to be connected.
  final String lastTrustHeartbeatTime;

  /// The trust authentication type, which decides whether the trusted side has forest/domain wide access or selective access to an approved set of resources.
  final bool selectiveAuthentication;

  /// The current state of the trust.
  final String state;

  /// Additional information about the current state of the trust, if available.
  final String stateDescription;

  /// The target DNS server IP addresses which can resolve the remote domain involved in the trust.
  final List<String> targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with the current domain.
  final String targetDomainName;

  /// The trust direction, which decides if the current domain is trusted, trusting, or both.
  final String trustDirection;

  /// Input only. The trust secret used for the handshake with the target domain. It will not be stored.
  final String trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  final String trustType;

  /// The last update time.
  final String updateTime;

  TrustResponse3({
    required this.createTime,
    required this.lastTrustHeartbeatTime,
    required this.selectiveAuthentication,
    required this.state,
    required this.stateDescription,
    required this.targetDnsIpAddresses,
    required this.targetDomainName,
    required this.trustDirection,
    required this.trustHandshakeSecret,
    required this.trustType,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['lastTrustHeartbeatTime'] = lastTrustHeartbeatTime;
    map['selectiveAuthentication'] = selectiveAuthentication;
    map['state'] = state;
    map['stateDescription'] = stateDescription;
    map['targetDnsIpAddresses'] = targetDnsIpAddresses;
    map['targetDomainName'] = targetDomainName;
    map['trustDirection'] = trustDirection;
    map['trustHandshakeSecret'] = trustHandshakeSecret;
    map['trustType'] = trustType;
    map['updateTime'] = updateTime;
    return map;
  }

  factory TrustResponse3.fromMap(Map<String, dynamic> map) {
    return TrustResponse3(
      createTime: map['createTime'] as String,
      lastTrustHeartbeatTime: map['lastTrustHeartbeatTime'] as String,
      selectiveAuthentication: map['selectiveAuthentication'] as bool,
      state: map['state'] as String,
      stateDescription: map['stateDescription'] as String,
      targetDnsIpAddresses:
          (map['targetDnsIpAddresses'] as List).cast<String>(),
      targetDomainName: map['targetDomainName'] as String,
      trustDirection: map['trustDirection'] as String,
      trustHandshakeSecret: map['trustHandshakeSecret'] as String,
      trustType: map['trustType'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
