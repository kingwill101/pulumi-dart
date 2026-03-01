// ignore_for_file: unused_element, unnecessary_cast


/// NodeAddress contains information for the node's address.
class NodeAddressPatch {
  /// The node address.
  final String? address;
  /// Node address type, one of Hostname, ExternalIP or InternalIP.
  final String? type;

  /// Creates a new [NodeAddressPatch].
  /// [address] The node address.
  /// [type] Node address type, one of Hostname, ExternalIP or InternalIP.
  NodeAddressPatch({
    this.address,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'type': ?type,
    };
  }

  factory NodeAddressPatch.fromMap(Map<String, dynamic> map) {
    return NodeAddressPatch(
      address: map['address'] == null ? null : map['address'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

