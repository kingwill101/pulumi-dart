// ignore_for_file: unused_element, unnecessary_cast

/// Represents a relationship between two domains which makes it possible for users in one domain to be authenticated by a dc in another domain. Refer https://docs.microsoft.com/en-us/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc731335(v%3dws.10) If the trust is being changed, it will be placed into the UPDATING state, which indicates that the resource is being reconciled. At this point, Get will reflect an intermediate state.
class TrustResponse2 {
  /// The time the instance was created.
  final String createTime;

  /// The last heartbeat time when the trust was known to be connected.
  final String lastKnownTrustConnectedHeartbeatTime;

  /// The trust authentication type which decides whether the trusted side has forest/domain wide access or selective access to approved set of resources.
  final bool selectiveAuthentication;

  /// The current state of this trust.
  final String state;

  /// Additional information about the current state of this trust, if available.
  final String stateDescription;

  /// The target dns server ip addresses which can resolve the remote domain involved in trust.
  final List<String> targetDnsIpAddresses;

  /// The fully qualified target domain name which will be in trust with current domain.
  final String targetDomainName;

  /// The trust direction decides the current domain is trusted, trusting or both.
  final String trustDirection;

  /// Input only, and will not be stored. The trust secret used for handshake with target domain.
  final String trustHandshakeSecret;

  /// The type of trust represented by the trust resource.
  final String trustType;

  /// Last update time.
  final String updateTime;

  TrustResponse2({
    required this.createTime,
    required this.lastKnownTrustConnectedHeartbeatTime,
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
    map['lastKnownTrustConnectedHeartbeatTime'] =
        lastKnownTrustConnectedHeartbeatTime;
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

  factory TrustResponse2.fromMap(Map<String, dynamic> map) {
    return TrustResponse2(
      createTime: map['createTime'] as String,
      lastKnownTrustConnectedHeartbeatTime:
          map['lastKnownTrustConnectedHeartbeatTime'] as String,
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
