// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfig2 {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String>? podRangeNames;

  AdditionalPodRangesConfig2({
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

  factory AdditionalPodRangesConfig2.fromMap(Map<String, dynamic> map) {
    return AdditionalPodRangesConfig2(
      podRangeNames: map['podRangeNames'] == null
          ? null
          : (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
