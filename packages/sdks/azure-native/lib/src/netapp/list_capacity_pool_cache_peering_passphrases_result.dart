// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listCapacityPoolCachePeeringPassphrases.
class ListCapacityPoolCachePeeringPassphrasesResult {
  /// The cluster peering command.
  final String clusterPeeringCommand;
  /// The cluster peering passphrase.
  final String clusterPeeringPassphrase;
  /// The vserver peering command.
  final String vserverPeeringCommand;

  /// Creates a new [ListCapacityPoolCachePeeringPassphrasesResult].
  /// [clusterPeeringCommand] The cluster peering command.
  /// [clusterPeeringPassphrase] The cluster peering passphrase.
  /// [vserverPeeringCommand] The vserver peering command.
  const ListCapacityPoolCachePeeringPassphrasesResult({
    required this.clusterPeeringCommand,
    required this.clusterPeeringPassphrase,
    required this.vserverPeeringCommand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterPeeringCommand': clusterPeeringCommand,
      'clusterPeeringPassphrase': clusterPeeringPassphrase,
      'vserverPeeringCommand': vserverPeeringCommand,
    };
  }

  factory ListCapacityPoolCachePeeringPassphrasesResult.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolCachePeeringPassphrasesResult(
      clusterPeeringCommand: map['clusterPeeringCommand'] as String,
      clusterPeeringPassphrase: map['clusterPeeringPassphrase'] as String,
      vserverPeeringCommand: map['vserverPeeringCommand'] as String,
    );
  }
}
