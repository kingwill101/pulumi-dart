// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dhcp_options_set_associate_vpc.dart';

/// Input properties used for looking up and filtering DhcpOptionsSet resources.
class DhcpOptionsSetState {
  /// Field 'associate_vpcs' has been deprecated from provider version 1.153.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_dhcp_options_set_attachment' to attach DhcpOptionsSet and Vpc. See `associate_vpcs` below.
  final pulumi.Input<List<DhcpOptionsSetAssociateVpc>>? associateVpcs;
  /// The description can be blank or contain 1 to 256 characters. It must start with a letter or Chinese character but cannot start with http:// or https://.
  final pulumi.Input<String>? dhcpOptionsSetDescription;
  /// The name of the DHCP options set.
  /// The name must be 1 to 128 characters in length and can contain letters, digits, underscores (_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? dhcpOptionsSetName;
  /// The root domain. For example, you can set the value to example.com.
  /// After a DHCP options set is associated with a virtual private cloud (VPC), the root domain in the DHCP options set is automatically synchronized with the ECS instances in the VPC.
  final pulumi.Input<String>? domainName;
  /// The IP address of the DNS server. You can enter at most four DNS server IP addresses. Separate IP addresses with commas (,).
  /// If no IP address is specified, the Elastic Compute Service (ECS) instance uses the IP addresses 100.100.2.136 and 100.100.2.138, which are provided by Alibaba Cloud by default.
  final pulumi.Input<String>? domainNameServers;
  /// Whether to PreCheck only this request, value:
  final pulumi.Input<bool>? dryRun;
  /// The lease time of the IPv6 DHCP option set.
  /// When the lease time is set to hours: Unit: h. Value range: 24h ~ 1176h,87600h ~ 175200h. Default value: 87600h.
  /// When the lease time is set to day: Unit: d. Value range: 1d ~ 49d,3650d ~ 7300d. Default value: 1d.
  final pulumi.Input<String>? ipv6LeaseTime;
  /// The lease time of the IPv4 addresses for the DHCP options set.
  /// If you use hours as the unit, valid values are 24h to 1176h and 87600h to 175200h. Default value: 87600h.
  /// If you use days as the unit, valid values are 1d to 49d and 3650d to 7300d. Default value: 3650d.
  final pulumi.Input<String>? leaseTime;
  /// The ID of the account to which the DHCP options set belongs.
  final pulumi.Input<int>? ownerId;
  /// The ID of the resource group to which the DHCP options set belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The status of the resource.
  final pulumi.Input<String>? status;
  /// Tags of the current resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DhcpOptionsSetState].
  /// [associateVpcs] Field 'associate_vpcs' has been deprecated from provider version 1.153.0 and it will be removed in the future version. Please use the new resource 'alicloud_vpc_dhcp_options_set_attachment' to attach DhcpOptionsSet and Vpc. See `associate_vpcs` below.
  /// [dhcpOptionsSetDescription] The description can be blank or contain 1 to 256 characters. It must start with a letter or Chinese character but cannot start with http:// or https://.
  /// [dhcpOptionsSetName] The name of the DHCP options set.
  /// [domainName] The root domain. For example, you can set the value to example.com.
  /// [domainNameServers] The IP address of the DNS server. You can enter at most four DNS server IP addresses. Separate IP addresses with commas (,).
  /// [dryRun] Whether to PreCheck only this request, value:
  /// [ipv6LeaseTime] The lease time of the IPv6 DHCP option set.
  /// [leaseTime] The lease time of the IPv4 addresses for the DHCP options set.
  /// [ownerId] The ID of the account to which the DHCP options set belongs.
  /// [resourceGroupId] The ID of the resource group to which the DHCP options set belongs.
  /// [status] The status of the resource.
  /// [tags] Tags of the current resource.
  const DhcpOptionsSetState({
    this.associateVpcs,
    this.dhcpOptionsSetDescription,
    this.dhcpOptionsSetName,
    this.domainName,
    this.domainNameServers,
    this.dryRun,
    this.ipv6LeaseTime,
    this.leaseTime,
    this.ownerId,
    this.resourceGroupId,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associateVpcs': ?pulumi.Input.mapOptionalInputValue<List<DhcpOptionsSetAssociateVpc>, List<Map<String, dynamic>>>(associateVpcs, (value) => pulumi.Input.encodeList<DhcpOptionsSetAssociateVpc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dhcpOptionsSetDescription': ?dhcpOptionsSetDescription,
      'dhcpOptionsSetName': ?dhcpOptionsSetName,
      'domainName': ?domainName,
      'domainNameServers': ?domainNameServers,
      'dryRun': ?dryRun,
      'ipv6LeaseTime': ?ipv6LeaseTime,
      'leaseTime': ?leaseTime,
      'ownerId': ?ownerId,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory DhcpOptionsSetState.fromMap(Map<String, dynamic> map) {
    return DhcpOptionsSetState(
      associateVpcs: (() { final guardedValue = map['associateVpcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DhcpOptionsSetAssociateVpc>(guardedValue, (value) => DhcpOptionsSetAssociateVpc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dhcpOptionsSetDescription: (() { final guardedValue = map['dhcpOptionsSetDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dhcpOptionsSetName: (() { final guardedValue = map['dhcpOptionsSetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: (() { final guardedValue = map['domainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNameServers: (() { final guardedValue = map['domainNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipv6LeaseTime: (() { final guardedValue = map['ipv6LeaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      leaseTime: (() { final guardedValue = map['leaseTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

