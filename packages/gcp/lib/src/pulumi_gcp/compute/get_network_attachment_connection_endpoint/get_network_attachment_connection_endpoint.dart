// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkAttachmentConnectionEndpoint {
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final String ipAddress;

  /// The project id or number of the interface to which the IP was assigned.
  final String projectIdOrNum;

  /// Alias IP ranges from the same subnetwork.
  final String secondaryIpCidrRanges;

  /// The status of a connected endpoint to this network attachment.
  final String status;

  /// The subnetwork used to assign the IP to the producer instance network interface.
  final String subnetwork;

  GetNetworkAttachmentConnectionEndpoint({
    required this.ipAddress,
    required this.projectIdOrNum,
    required this.secondaryIpCidrRanges,
    required this.status,
    required this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ipAddress'] = ipAddress;
    map['projectIdOrNum'] = projectIdOrNum;
    map['secondaryIpCidrRanges'] = secondaryIpCidrRanges;
    map['status'] = status;
    map['subnetwork'] = subnetwork;
    return map;
  }

  factory GetNetworkAttachmentConnectionEndpoint.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkAttachmentConnectionEndpoint(
      ipAddress: map['ipAddress'] as String,
      projectIdOrNum: map['projectIdOrNum'] as String,
      secondaryIpCidrRanges: map['secondaryIpCidrRanges'] as String,
      status: map['status'] as String,
      subnetwork: map['subnetwork'] as String,
    );
  }
}
