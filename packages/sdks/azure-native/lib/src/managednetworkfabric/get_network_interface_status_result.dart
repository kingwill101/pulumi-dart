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
  const GetNetworkInterfaceStatusResult({
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
      connectedTo: (() { final guardedValue = map['connectedTo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      operationalStatus: (() { final guardedValue = map['operationalStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      phyStatus: (() { final guardedValue = map['phyStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      transceiverStatus: (() { final guardedValue = map['transceiverStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
