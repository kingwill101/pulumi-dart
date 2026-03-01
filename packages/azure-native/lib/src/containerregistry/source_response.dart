// ignore_for_file: unused_element, unnecessary_cast


/// The registry node that generated the event. Put differently, while the actor initiates the event, the source generates it.
class SourceResponse {
  /// The IP or hostname and the port of the registry node that generated the event. Generally, this will be resolved by os.Hostname() along with the running port.
  final String? addr;
  /// The running instance of an application. Changes after each restart.
  final String? instanceID;

  /// Creates a new [SourceResponse].
  /// [addr] The IP or hostname and the port of the registry node that generated the event. Generally, this will be resolved by os.Hostname() along with the running port.
  /// [instanceID] The running instance of an application. Changes after each restart.
  SourceResponse({
    this.addr,
    this.instanceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addr': ?addr,
      'instanceID': ?instanceID,
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      addr: map['addr'] == null ? null : map['addr'] as String,
      instanceID: map['instanceID'] == null ? null : map['instanceID'] as String,
    );
  }
}

