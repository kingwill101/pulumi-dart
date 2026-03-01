// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic {
  /// Specifies a list of IPv4 or IPv6 addresses or ranges using CIDR notation of the source you want to verify. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final List<String> destinationIps;
  /// Specifies a list of ports or ranges of the destination you want to verify. To specify any port, use `["*"]`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final List<String> destinationPorts;
  /// Specifies a list of network protocols. Possible values are `Any`, `TCP`, `UDP` and `ICMP`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final List<String> protocols;
  /// Specifies a list of IPv4 or IPv6 addresses or ranges using CIDR notation of the source you want to verify. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final List<String> sourceIps;
  /// Specifies a list of ports or ranges of the source you want to verify. To specify any port, use `["*"]`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  final List<String> sourcePorts;

  /// Creates a new [NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic].
  /// [destinationIps] Specifies a list of IPv4 or IPv6 addresses or ranges using CIDR notation of the source you want to verify. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [destinationPorts] Specifies a list of ports or ranges of the destination you want to verify. To specify any port, use `["*"]`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [protocols] Specifies a list of network protocols. Possible values are `Any`, `TCP`, `UDP` and `ICMP`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [sourceIps] Specifies a list of IPv4 or IPv6 addresses or ranges using CIDR notation of the source you want to verify. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  /// [sourcePorts] Specifies a list of ports or ranges of the source you want to verify. To specify any port, use `["*"]`. Changing this forces a new Network Manager Verifier Workspace Reachability Analysis Intent to be created.
  NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic({
    required this.destinationIps,
    required this.destinationPorts,
    required this.protocols,
    required this.sourceIps,
    required this.sourcePorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationIps': destinationIps,
      'destinationPorts': destinationPorts,
      'protocols': protocols,
      'sourceIps': sourceIps,
      'sourcePorts': sourcePorts,
    };
  }

  factory NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic.fromMap(Map<String, dynamic> map) {
    return NetworkManagerVerifierWorkspaceReachabilityAnalysisIntentIpTraffic(
      destinationIps: (map['destinationIps'] as List).cast<String>(),
      destinationPorts: (map['destinationPorts'] as List).cast<String>(),
      protocols: (map['protocols'] as List).cast<String>(),
      sourceIps: (map['sourceIps'] as List).cast<String>(),
      sourcePorts: (map['sourcePorts'] as List).cast<String>(),
    );
  }
}

