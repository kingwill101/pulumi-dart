// ignore_for_file: unused_element, unnecessary_cast


class DomainCpuNumaInterconnectsBandwidth {
  /// Specifies the bandwidth allocation for cache-specific interconnects between NUMA nodes.
  final double? cache;
  /// Defines the initiator's bandwidth constraints for interconnecting NUMA cells.
  final double initiator;
  /// Configures the target's bandwidth limitations for interconnecting NUMA nodes.
  final double target;
  /// Indicates the type of bandwidth established for interconnecting communication.
  final String type;
  /// Sets the unit of measurement for the specified bandwidth in the NUMA interconnection.
  final String unit;
  /// Establishes the actual bandwidth value for interconnects between NUMA nodes, defined by the unit.
  final double value;

  /// Creates a new [DomainCpuNumaInterconnectsBandwidth].
  /// [cache] Specifies the bandwidth allocation for cache-specific interconnects between NUMA nodes.
  /// [initiator] Defines the initiator's bandwidth constraints for interconnecting NUMA cells.
  /// [target] Configures the target's bandwidth limitations for interconnecting NUMA nodes.
  /// [type] Indicates the type of bandwidth established for interconnecting communication.
  /// [unit] Sets the unit of measurement for the specified bandwidth in the NUMA interconnection.
  /// [value] Establishes the actual bandwidth value for interconnects between NUMA nodes, defined by the unit.
  DomainCpuNumaInterconnectsBandwidth({
    this.cache,
    required this.initiator,
    required this.target,
    required this.type,
    required this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cache': ?cache,
      'initiator': initiator,
      'target': target,
      'type': type,
      'unit': unit,
      'value': value,
    };
  }

  factory DomainCpuNumaInterconnectsBandwidth.fromMap(Map<String, dynamic> map) {
    return DomainCpuNumaInterconnectsBandwidth(
      cache: map['cache'] == null ? null : map['cache'] as double,
      initiator: map['initiator'] as double,
      target: map['target'] as double,
      type: map['type'] as String,
      unit: map['unit'] as String,
      value: map['value'] as double,
    );
  }
}

