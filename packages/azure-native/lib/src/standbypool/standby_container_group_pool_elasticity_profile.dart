// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the elasticity profile of the standby container group pools.
class StandbyContainerGroupPoolElasticityProfile {
  /// Specifies maximum number of standby container groups in the standby pool.
  final double maxReadyCapacity;
  /// Specifies refill policy of the pool.
  final String? refillPolicy;

  /// Creates a new [StandbyContainerGroupPoolElasticityProfile].
  /// [maxReadyCapacity] Specifies maximum number of standby container groups in the standby pool.
  /// [refillPolicy] Specifies refill policy of the pool.
  StandbyContainerGroupPoolElasticityProfile({
    required this.maxReadyCapacity,
    this.refillPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxReadyCapacity': maxReadyCapacity,
      'refillPolicy': ?refillPolicy,
    };
  }

  factory StandbyContainerGroupPoolElasticityProfile.fromMap(Map<String, dynamic> map) {
    return StandbyContainerGroupPoolElasticityProfile(
      maxReadyCapacity: map['maxReadyCapacity'] as double,
      refillPolicy: map['refillPolicy'] == null ? null : map['refillPolicy'] as String,
    );
  }
}

