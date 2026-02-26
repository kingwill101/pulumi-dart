// ignore_for_file: unused_element, unnecessary_cast

class ClusterBrokerCapacityConfig {
  /// The disk to provision for each broker in Gibibytes. Minimum: 100 GiB.
  final String? diskSizeGib;

  ClusterBrokerCapacityConfig({
    this.diskSizeGib,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGibValue = diskSizeGib;
    if (diskSizeGibValue != null) {
      map['diskSizeGib'] = diskSizeGibValue;
    }
    return map;
  }

  factory ClusterBrokerCapacityConfig.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerCapacityConfig(
      diskSizeGib:
          map['diskSizeGib'] == null ? null : map['diskSizeGib'] as String,
    );
  }
}
