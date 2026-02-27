// ignore_for_file: unused_element, unnecessary_cast

class ConnectorCapacityProvisionedCapacity {
  /// The number of microcontroller units (MCUs) allocated to each connector worker. Valid values: `1`, `2`, `4`, `8`. The default value is `1`.
  final int? mcuCount;

  /// The number of workers that are allocated to the connector.
  final int workerCount;

  ConnectorCapacityProvisionedCapacity({
    this.mcuCount,
    required this.workerCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final mcuCountValue = mcuCount;
    if (mcuCountValue != null) {
      map['mcuCount'] = mcuCountValue;
    }
    map['workerCount'] = workerCount;
    return map;
  }

  factory ConnectorCapacityProvisionedCapacity.fromMap(
      Map<String, dynamic> map) {
    return ConnectorCapacityProvisionedCapacity(
      mcuCount: map['mcuCount'] == null ? null : map['mcuCount'] as int,
      workerCount: map['workerCount'] as int,
    );
  }
}
