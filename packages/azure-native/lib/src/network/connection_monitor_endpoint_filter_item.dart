// ignore_for_file: unused_element, unnecessary_cast


/// Describes the connection monitor endpoint filter item.
class ConnectionMonitorEndpointFilterItem {
  /// The address of the filter item.
  final String? address;
  /// The type of item included in the filter. Currently only 'AgentAddress' is supported.
  final String? type;

  /// Creates a new [ConnectionMonitorEndpointFilterItem].
  /// [address] The address of the filter item.
  /// [type] The type of item included in the filter. Currently only 'AgentAddress' is supported.
  ConnectionMonitorEndpointFilterItem({
    this.address,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': ?type,
    };
  }

  factory ConnectionMonitorEndpointFilterItem.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorEndpointFilterItem(
      address: map['address'] == null ? null : map['address'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

