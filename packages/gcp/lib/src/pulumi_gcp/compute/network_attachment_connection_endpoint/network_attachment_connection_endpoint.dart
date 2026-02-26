// ignore_for_file: unused_element, unnecessary_cast

class NetworkAttachmentConnectionEndpoint {
  /// (Output)
  /// The IPv4 address assigned to the producer instance network interface. This value will be a range in case of Serverless.
  final String? ipAddress;

  /// (Output)
  /// The project id or number of the interface to which the IP was assigned.
  final String? projectIdOrNum;

  /// (Output)
  /// Alias IP ranges from the same subnetwork.
  final String? secondaryIpCidrRanges;

  /// (Output)
  /// The status of a connected endpoint to this network attachment.
  final String? status;

  /// (Output)
  /// The subnetwork used to assign the IP to the producer instance network interface.
  final String? subnetwork;

  NetworkAttachmentConnectionEndpoint({
    this.ipAddress,
    this.projectIdOrNum,
    this.secondaryIpCidrRanges,
    this.status,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final projectIdOrNumValue = projectIdOrNum;
    if (projectIdOrNumValue != null) {
      map['projectIdOrNum'] = projectIdOrNumValue;
    }
    final secondaryIpCidrRangesValue = secondaryIpCidrRanges;
    if (secondaryIpCidrRangesValue != null) {
      map['secondaryIpCidrRanges'] = secondaryIpCidrRangesValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    return map;
  }

  factory NetworkAttachmentConnectionEndpoint.fromMap(
      Map<String, dynamic> map) {
    return NetworkAttachmentConnectionEndpoint(
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      projectIdOrNum: map['projectIdOrNum'] == null
          ? null
          : map['projectIdOrNum'] as String,
      secondaryIpCidrRanges: map['secondaryIpCidrRanges'] == null
          ? null
          : map['secondaryIpCidrRanges'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      subnetwork:
          map['subnetwork'] == null ? null : map['subnetwork'] as String,
    );
  }
}
