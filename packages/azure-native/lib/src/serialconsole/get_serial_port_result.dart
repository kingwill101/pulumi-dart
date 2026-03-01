// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSerialPort.
class GetSerialPortResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Id
  final String id;
  /// Resource name
  final String name;
  /// Specifies whether the port is enabled for a serial console connection.
  final String? state;
  /// Resource type
  final String type;

  /// Creates a new [GetSerialPortResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [state] Specifies whether the port is enabled for a serial console connection.
  /// [type] Resource type
  GetSerialPortResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'state': ?state,
      'type': type,
    };
  }

  factory GetSerialPortResult.fromMap(Map<String, dynamic> map) {
    return GetSerialPortResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
    );
  }
}

