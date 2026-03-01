// ignore_for_file: unused_element, unnecessary_cast


class NetworkVirtualPortParamsVepa8021qbg {
  /// Sets the instance ID for VEPA 802.1Qbg virtual port parameters.
  final String? instanceId;
  /// Configures the manager ID associated with VEPA 802.1Qbg parameters.
  final double? managerId;
  /// Specifies the type ID for VEPA 802.1Qbg virtual port parameters.
  final double? typeId;
  /// Indicates the version of the type ID for VEPA 802.1Qbg parameters.
  final double? typeIdVersion;

  /// Creates a new [NetworkVirtualPortParamsVepa8021qbg].
  /// [instanceId] Sets the instance ID for VEPA 802.1Qbg virtual port parameters.
  /// [managerId] Configures the manager ID associated with VEPA 802.1Qbg parameters.
  /// [typeId] Specifies the type ID for VEPA 802.1Qbg virtual port parameters.
  /// [typeIdVersion] Indicates the version of the type ID for VEPA 802.1Qbg parameters.
  NetworkVirtualPortParamsVepa8021qbg({
    this.instanceId,
    this.managerId,
    this.typeId,
    this.typeIdVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'managerId': ?managerId,
      'typeId': ?typeId,
      'typeIdVersion': ?typeIdVersion,
    };
  }

  factory NetworkVirtualPortParamsVepa8021qbg.fromMap(Map<String, dynamic> map) {
    return NetworkVirtualPortParamsVepa8021qbg(
      instanceId: map['instanceId'] == null ? null : map['instanceId'] as String,
      managerId: map['managerId'] == null ? null : map['managerId'] as double,
      typeId: map['typeId'] == null ? null : map['typeId'] as double,
      typeIdVersion: map['typeIdVersion'] == null ? null : map['typeIdVersion'] as double,
    );
  }
}

