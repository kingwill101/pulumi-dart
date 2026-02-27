// ignore_for_file: unused_element, unnecessary_cast

/// AdditionalPodRangesConfig is the configuration for additional pod secondary ranges supporting the ClusterUpdate message.
class AdditionalPodRangesConfigContainerV1beta1 {
  /// Name for pod secondary ipv4 range which has the actual range defined ahead.
  final List<String>? podRangeNames;

  AdditionalPodRangesConfigContainerV1beta1({
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

  factory AdditionalPodRangesConfigContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AdditionalPodRangesConfigContainerV1beta1(
      podRangeNames: map['podRangeNames'] == null
          ? null
          : (map['podRangeNames'] as List).cast<String>(),
    );
  }
}
