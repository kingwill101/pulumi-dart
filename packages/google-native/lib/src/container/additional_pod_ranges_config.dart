// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfig {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String>? podRangeNames;

  /// Creates a new [AdditionalPodRangesConfig].
  /// [podRangeNames] Name for pod secondary ipv4 range which has the actual range defined ahead.
  AdditionalPodRangesConfig({
    this.podRangeNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final podRangeNamesValue = podRangeNames;
    if (podRangeNamesValue != null) {
      map['podRangeNames'] = podRangeNamesValue;
    }
    return map;
  }

  factory AdditionalPodRangesConfig.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfig(
      podRangeNames: map['podRangeNames'] == null
          ? null
          : (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
