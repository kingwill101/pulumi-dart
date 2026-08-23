// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkDeviceStatus.
class GetNetworkDeviceStatusResult {
  /// Primary or Secondary power end.
  final String operationalStatus;
  /// On or Off power cycle state.
  final String powerCycleState;
  /// The serial number of the device
  final String serialNumber;

  /// Creates a new [GetNetworkDeviceStatusResult].
  /// [operationalStatus] Primary or Secondary power end.
  /// [powerCycleState] On or Off power cycle state.
  /// [serialNumber] The serial number of the device
  const GetNetworkDeviceStatusResult({
    required this.operationalStatus,
    required this.powerCycleState,
    required this.serialNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operationalStatus': operationalStatus,
      'powerCycleState': powerCycleState,
      'serialNumber': serialNumber,
    };
  }

  factory GetNetworkDeviceStatusResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkDeviceStatusResult(
      operationalStatus: map['operationalStatus'] as String,
      powerCycleState: map['powerCycleState'] as String,
      serialNumber: map['serialNumber'] as String,
    );
  }
}
