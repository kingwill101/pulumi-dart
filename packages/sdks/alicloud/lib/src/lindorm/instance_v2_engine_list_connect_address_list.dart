// ignore_for_file: unused_element, unnecessary_cast


class InstanceV2EngineListConnectAddressList {
  /// Connect Address
  final String? address;
  /// Connect Port
  final String? port;
  /// Connect Type:
  final String? type;

  /// Creates a new [InstanceV2EngineListConnectAddressList].
  /// [address] Connect Address
  /// [port] Connect Port
  /// [type] Connect Type:
  InstanceV2EngineListConnectAddressList({
    this.address,
    this.port,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'port': ?port,
      'type': ?type,
    };
  }

  factory InstanceV2EngineListConnectAddressList.fromMap(Map<String, dynamic> map) {
    return InstanceV2EngineListConnectAddressList(
      address: map['address'] == null ? null : map['address'] as String,
      port: map['port'] == null ? null : map['port'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

