// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkInterfaceStatus.
class GetNetworkInterfaceStatusResult {
  /// The interface administrative state.
  final String administrativeState;
  /// Connected to ARM resource or external interface
  final String? connectedTo;
  /// The interface operational status.
  final String? operationalStatus;
  /// The physical status.
  final String? phyStatus;
  /// The interface transceiver type. Example: up or down
  final String? transceiverStatus;

  /// Creates a new [GetNetworkInterfaceStatusResult].
  /// [administrativeState] The interface administrative state.
  /// [connectedTo] Connected to ARM resource or external interface
  /// [operationalStatus] The interface operational status.
  /// [phyStatus] The physical status.
  /// [transceiverStatus] The interface transceiver type. Example: up or down
  GetNetworkInterfaceStatusResult({
    required this.administrativeState,
    this.connectedTo,
    this.operationalStatus,
    this.phyStatus,
    this.transceiverStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrativeState': administrativeState,
      'connectedTo': ?connectedTo,
      'operationalStatus': ?operationalStatus,
      'phyStatus': ?phyStatus,
      'transceiverStatus': ?transceiverStatus,
    };
  }

  factory GetNetworkInterfaceStatusResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkInterfaceStatusResult(
      administrativeState: map['administrativeState'] as String,
      connectedTo: map['connectedTo'] == null ? null : map['connectedTo']! as String,
      operationalStatus: map['operationalStatus'] == null ? null : map['operationalStatus']! as String,
      phyStatus: map['phyStatus'] == null ? null : map['phyStatus']! as String,
      transceiverStatus: map['transceiverStatus'] == null ? null : map['transceiverStatus']! as String,
    );
  }
}

