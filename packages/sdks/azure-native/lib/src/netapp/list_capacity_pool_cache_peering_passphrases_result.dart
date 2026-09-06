// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listCapacityPoolCachePeeringPassphrases.
class ListCapacityPoolCachePeeringPassphrasesResult {
  /// The cluster peering command.
  final String? clusterPeeringCommand;
  /// The cluster peering passphrase.
  final String? clusterPeeringPassphrase;
  /// The vserver peering command.
  final String? vserverPeeringCommand;

  /// Creates a new [ListCapacityPoolCachePeeringPassphrasesResult].
  /// [clusterPeeringCommand] The cluster peering command.
  /// [clusterPeeringPassphrase] The cluster peering passphrase.
  /// [vserverPeeringCommand] The vserver peering command.
  const ListCapacityPoolCachePeeringPassphrasesResult({
    this.clusterPeeringCommand,
    this.clusterPeeringPassphrase,
    this.vserverPeeringCommand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterPeeringCommand': ?clusterPeeringCommand,
      'clusterPeeringPassphrase': ?clusterPeeringPassphrase,
      'vserverPeeringCommand': ?vserverPeeringCommand,
    };
  }

  factory ListCapacityPoolCachePeeringPassphrasesResult.fromMap(Map<String, dynamic> map) {
    return ListCapacityPoolCachePeeringPassphrasesResult(
      clusterPeeringCommand: (() { final guardedValue = map['clusterPeeringCommand']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterPeeringPassphrase: (() { final guardedValue = map['clusterPeeringPassphrase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vserverPeeringCommand: (() { final guardedValue = map['vserverPeeringCommand']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
