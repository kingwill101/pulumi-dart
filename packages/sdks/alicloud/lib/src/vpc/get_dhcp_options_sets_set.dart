// ignore_for_file: unused_element, unnecessary_cast


class GetDhcpOptionsSetsSet {
  /// The Number of VPCs bound by the DHCP option set.
  final int associateVpcCount;
  /// The description of the DHCP options set. The description must be 2 to 256
  /// characters in length and cannot start with `http://` or `https://`.
  final String dhcpOptionsSetDescription;
  final String dhcpOptionsSetId;
  /// The root domain, for example, example.com. After a DHCP options set is associated with a
  /// Virtual Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the
  /// ECS instances in the VPC network.
  final String dhcpOptionsSetName;
  /// The root domain, for example, example.com. After a DHCP options set is associated with a Virtual
  /// Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the ECS
  /// instances in the VPC network.
  final String domainName;
  /// The DNS server IP addresses. Up to four DNS server IP addresses can be specified. IP
  /// addresses must be separated with commas (,).
  final String domainNameServers;
  final String id;
  /// The ID of the account to which the DHCP options set belongs.
  final String ownerId;
  /// The status of the DHCP options set. Valid values: `Available`, `InUse` or `Pending`. `Available`: The DHCP options set is available for use. `InUse`: The DHCP options set is in use. `Pending`: The DHCP options set is being configured.
  final String status;

  /// Creates a new [GetDhcpOptionsSetsSet].
  /// [associateVpcCount] The Number of VPCs bound by the DHCP option set.
  /// [dhcpOptionsSetDescription] The description of the DHCP options set. The description must be 2 to 256
  /// [dhcpOptionsSetId] Required.
  /// [dhcpOptionsSetName] The root domain, for example, example.com. After a DHCP options set is associated with a
  /// [domainName] The root domain, for example, example.com. After a DHCP options set is associated with a Virtual
  /// [domainNameServers] The DNS server IP addresses. Up to four DNS server IP addresses can be specified. IP
  /// [id] Required.
  /// [ownerId] The ID of the account to which the DHCP options set belongs.
  /// [status] The status of the DHCP options set. Valid values: `Available`, `InUse` or `Pending`. `Available`: The DHCP options set is available for use. `InUse`: The DHCP options set is in use. `Pending`: The DHCP options set is being configured.
  GetDhcpOptionsSetsSet({
    required this.associateVpcCount,
    required this.dhcpOptionsSetDescription,
    required this.dhcpOptionsSetId,
    required this.dhcpOptionsSetName,
    required this.domainName,
    required this.domainNameServers,
    required this.id,
    required this.ownerId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateVpcCount': associateVpcCount,
      'dhcpOptionsSetDescription': dhcpOptionsSetDescription,
      'dhcpOptionsSetId': dhcpOptionsSetId,
      'dhcpOptionsSetName': dhcpOptionsSetName,
      'domainName': domainName,
      'domainNameServers': domainNameServers,
      'id': id,
      'ownerId': ownerId,
      'status': status,
    };
  }

  factory GetDhcpOptionsSetsSet.fromMap(Map<String, dynamic> map) {
    return GetDhcpOptionsSetsSet(
      associateVpcCount: map['associateVpcCount'] as int,
      dhcpOptionsSetDescription: map['dhcpOptionsSetDescription'] as String,
      dhcpOptionsSetId: map['dhcpOptionsSetId'] as String,
      dhcpOptionsSetName: map['dhcpOptionsSetName'] as String,
      domainName: map['domainName'] as String,
      domainNameServers: map['domainNameServers'] as String,
      id: map['id'] as String,
      ownerId: map['ownerId'] as String,
      status: map['status'] as String,
    );
  }
}

