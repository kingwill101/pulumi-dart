// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDhcpOptionsSetsSet {
  /// The Number of VPCs bound by the DHCP option set.
  final pulumi.Input<int> associateVpcCount;
  /// The description of the DHCP options set. The description must be 2 to 256
  /// characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String> dhcpOptionsSetDescription;
  final pulumi.Input<String> dhcpOptionsSetId;
  /// The root domain, for example, example.com. After a DHCP options set is associated with a
  /// Virtual Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the
  /// ECS instances in the VPC network.
  final pulumi.Input<String> dhcpOptionsSetName;
  /// The root domain, for example, example.com. After a DHCP options set is associated with a Virtual
  /// Private Cloud (VPC) network, the root domain in the DHCP options set is automatically synchronized to the ECS
  /// instances in the VPC network.
  final pulumi.Input<String> domainName;
  /// The DNS server IP addresses. Up to four DNS server IP addresses can be specified. IP
  /// addresses must be separated with commas (,).
  final pulumi.Input<String> domainNameServers;
  final pulumi.Input<String> id;
  /// The ID of the account to which the DHCP options set belongs.
  final pulumi.Input<String> ownerId;
  /// The status of the DHCP options set. Valid values: `Available`, `InUse` or `Pending`. `Available`: The DHCP options set is available for use. `InUse`: The DHCP options set is in use. `Pending`: The DHCP options set is being configured.
  final pulumi.Input<String> status;

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
      associateVpcCount: (map['associateVpcCount'] as int).input(),
      dhcpOptionsSetDescription: (map['dhcpOptionsSetDescription'] as String).input(),
      dhcpOptionsSetId: (map['dhcpOptionsSetId'] as String).input(),
      dhcpOptionsSetName: (map['dhcpOptionsSetName'] as String).input(),
      domainName: (map['domainName'] as String).input(),
      domainNameServers: (map['domainNameServers'] as String).input(),
      id: (map['id'] as String).input(),
      ownerId: (map['ownerId'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

