// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesAudioJackOutput {
  /// Sets the client name for the Jack audio output.
  final String? clientName;
  /// Specifies the connection ports for the Jack audio output.
  final String? connectPorts;
  /// Sets the exact client name for the Jack audio output.
  final String? exactName;
  /// Sets the server name for the Jack audio output.
  final String? serverName;

  /// Creates a new [DomainDevicesAudioJackOutput].
  /// [clientName] Sets the client name for the Jack audio output.
  /// [connectPorts] Specifies the connection ports for the Jack audio output.
  /// [exactName] Sets the exact client name for the Jack audio output.
  /// [serverName] Sets the server name for the Jack audio output.
  DomainDevicesAudioJackOutput({
    this.clientName,
    this.connectPorts,
    this.exactName,
    this.serverName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientName': ?clientName,
      'connectPorts': ?connectPorts,
      'exactName': ?exactName,
      'serverName': ?serverName,
    };
  }

  factory DomainDevicesAudioJackOutput.fromMap(Map<String, dynamic> map) {
    return DomainDevicesAudioJackOutput(
      clientName: map['clientName'] == null ? null : map['clientName'] as String,
      connectPorts: map['connectPorts'] == null ? null : map['connectPorts'] as String,
      exactName: map['exactName'] == null ? null : map['exactName'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
    );
  }
}

