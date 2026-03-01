// ignore_for_file: unused_element, unnecessary_cast


class NetworkingIpAssignmentAssignment {
  /// The IPv4 address or IPv6 range to assign.
  final String address;
  /// The ID of the Linode to which the IP address will be assigned.
  final int linodeId;

  /// Creates a new [NetworkingIpAssignmentAssignment].
  /// [address] The IPv4 address or IPv6 range to assign.
  /// [linodeId] The ID of the Linode to which the IP address will be assigned.
  NetworkingIpAssignmentAssignment({
    required this.address,
    required this.linodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'linodeId': linodeId,
    };
  }

  factory NetworkingIpAssignmentAssignment.fromMap(Map<String, dynamic> map) {
    return NetworkingIpAssignmentAssignment(
      address: map['address'] as String,
      linodeId: map['linodeId'] as int,
    );
  }
}

