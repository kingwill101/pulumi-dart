// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_attribute.dart';
import 'subnet_mapping.dart';
import 'tag.dart';

/// Definition of awsElasticLoadBalancingV2LoadBalancer
class AwsElasticLoadBalancingV2LoadBalancerProperties {
  /// Property canonicalHostedZoneID
  final String? canonicalHostedZoneID;
  /// Property dnsName
  final String? dnsName;
  /// Indicates whether to evaluate inbound security group rules for traffic sent to a Network Load Balancer through privatelink.
  final String? enforceSecurityGroupInboundRulesOnPrivateLinkTraffic;
  /// The IP address type. The possible values are ``ipv4`` (for IPv4 addresses) and ``dualstack`` (for IPv4 and IPv6 addresses). You can’t specify ``dualstack`` for a load balancer with a UDP or TCP_UDP listener.
  final String? ipAddressType;
  /// Property loadBalancerArn
  final String? loadBalancerArn;
  /// The load balancer attributes.
  final List<LoadBalancerAttribute>? loadBalancerAttributes;
  /// Property loadBalancerFullName
  final String? loadBalancerFullName;
  /// Property loadBalancerName
  final String? loadBalancerName;
  /// The name of the load balancer. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must not begin with 'internal-'. If you don't specify a name, AWS CloudFormation generates a unique physical ID for the load balancer. If you specify a name, you cannot perform updates that require replacement of this resource, but you can perform other updates. To replace the resource, specify a new name.
  final String? name;
  /// The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet. The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can route requests only from clients with access to the VPC for the load balancer. The default is an Internet-facing load balancer. You cannot specify a scheme for a Gateway Load Balancer.
  final String? scheme;
  /// [Application Load Balancers and Network Load Balancers] The IDs of the security groups for the load balancer.
  final List<String>? securityGroups;
  /// The IDs of the subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings, but not both. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet if you need static IP addresses for your internet-facing load balancer. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you can specify one IPv6 address per subnet. [Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You cannot specify Elastic IP addresses for your subnets.
  final List<SubnetMapping>? subnetMappings;
  /// The IDs of the subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings, but not both. To specify an Elastic IP address, specify subnet mappings instead of subnets. [Application Load Balancers] You must specify subnets from at least two Availability Zones. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. [Gateway Load Balancers] You can specify subnets from one or more Availability Zones.
  final List<String>? subnets;
  /// The tags to assign to the load balancer.
  final List<Tag>? tags;
  /// The type of load balancer. The default is ``application``.
  final String? type;

  /// Creates a new [AwsElasticLoadBalancingV2LoadBalancerProperties].
  /// [canonicalHostedZoneID] Property canonicalHostedZoneID
  /// [dnsName] Property dnsName
  /// [enforceSecurityGroupInboundRulesOnPrivateLinkTraffic] Indicates whether to evaluate inbound security group rules for traffic sent to a Network Load Balancer through privatelink.
  /// [ipAddressType] The IP address type. The possible values are ``ipv4`` (for IPv4 addresses) and ``dualstack`` (for IPv4 and IPv6 addresses). You can’t specify ``dualstack`` for a load balancer with a UDP or TCP_UDP listener.
  /// [loadBalancerArn] Property loadBalancerArn
  /// [loadBalancerAttributes] The load balancer attributes.
  /// [loadBalancerFullName] Property loadBalancerFullName
  /// [loadBalancerName] Property loadBalancerName
  /// [name] The name of the load balancer. This name must be unique per region per account, can have a maximum of 32 characters, must contain only alphanumeric characters or hyphens, must not begin or end with a hyphen, and must not begin with 'internal-'. If you don't specify a name, AWS CloudFormation generates a unique physical ID for the load balancer. If you specify a name, you cannot perform updates that require replacement of this resource, but you can perform other updates. To replace the resource, specify a new name.
  /// [scheme] The nodes of an Internet-facing load balancer have public IP addresses. The DNS name of an Internet-facing load balancer is publicly resolvable to the public IP addresses of the nodes. Therefore, Internet-facing load balancers can route requests from clients over the internet. The nodes of an internal load balancer have only private IP addresses. The DNS name of an internal load balancer is publicly resolvable to the private IP addresses of the nodes. Therefore, internal load balancers can route requests only from clients with access to the VPC for the load balancer. The default is an Internet-facing load balancer. You cannot specify a scheme for a Gateway Load Balancer.
  /// [securityGroups] [Application Load Balancers and Network Load Balancers] The IDs of the security groups for the load balancer.
  /// [subnetMappings] The IDs of the subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings, but not both. [Application Load Balancers] You must specify subnets from at least two Availability Zones. You cannot specify Elastic IP addresses for your subnets. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. You can specify one Elastic IP address per subnet if you need static IP addresses for your internet-facing load balancer. For internal load balancers, you can specify one private IP address per subnet from the IPv4 range of the subnet. For internet-facing load balancer, you can specify one IPv6 address per subnet. [Gateway Load Balancers] You can specify subnets from one or more Availability Zones. You cannot specify Elastic IP addresses for your subnets.
  /// [subnets] The IDs of the subnets. You can specify only one subnet per Availability Zone. You must specify either subnets or subnet mappings, but not both. To specify an Elastic IP address, specify subnet mappings instead of subnets. [Application Load Balancers] You must specify subnets from at least two Availability Zones. [Application Load Balancers on Outposts] You must specify one Outpost subnet. [Application Load Balancers on Local Zones] You can specify subnets from one or more Local Zones. [Network Load Balancers] You can specify subnets from one or more Availability Zones. [Gateway Load Balancers] You can specify subnets from one or more Availability Zones.
  /// [tags] The tags to assign to the load balancer.
  /// [type] The type of load balancer. The default is ``application``.
  AwsElasticLoadBalancingV2LoadBalancerProperties({
    this.canonicalHostedZoneID,
    this.dnsName,
    this.enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
    this.ipAddressType,
    this.loadBalancerArn,
    this.loadBalancerAttributes,
    this.loadBalancerFullName,
    this.loadBalancerName,
    this.name,
    this.scheme,
    this.securityGroups,
    this.subnetMappings,
    this.subnets,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canonicalHostedZoneID': ?canonicalHostedZoneID,
      'dnsName': ?dnsName,
      'enforceSecurityGroupInboundRulesOnPrivateLinkTraffic': ?enforceSecurityGroupInboundRulesOnPrivateLinkTraffic,
      'ipAddressType': ?ipAddressType,
      'loadBalancerArn': ?loadBalancerArn,
      'loadBalancerAttributes': ?loadBalancerAttributes == null ? null : pulumi.Input.encodeList<LoadBalancerAttribute, Map<String, dynamic>>(loadBalancerAttributes!, (value) => value.toMap()),
      'loadBalancerFullName': ?loadBalancerFullName,
      'loadBalancerName': ?loadBalancerName,
      'name': ?name,
      'scheme': ?scheme,
      'securityGroups': ?securityGroups,
      'subnetMappings': ?subnetMappings == null ? null : pulumi.Input.encodeList<SubnetMapping, Map<String, dynamic>>(subnetMappings!, (value) => value.toMap()),
      'subnets': ?subnets,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory AwsElasticLoadBalancingV2LoadBalancerProperties.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingV2LoadBalancerProperties(
      canonicalHostedZoneID: map['canonicalHostedZoneID'] == null ? null : map['canonicalHostedZoneID'] as String,
      dnsName: map['dnsName'] == null ? null : map['dnsName'] as String,
      enforceSecurityGroupInboundRulesOnPrivateLinkTraffic: map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] == null ? null : map['enforceSecurityGroupInboundRulesOnPrivateLinkTraffic'] as String,
      ipAddressType: map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      loadBalancerArn: map['loadBalancerArn'] == null ? null : map['loadBalancerArn'] as String,
      loadBalancerAttributes: map['loadBalancerAttributes'] == null ? null : pulumi.Input.decodeList<LoadBalancerAttribute>(map['loadBalancerAttributes'], (value) => LoadBalancerAttribute.fromMap((value as Map).cast<String, dynamic>())),
      loadBalancerFullName: map['loadBalancerFullName'] == null ? null : map['loadBalancerFullName'] as String,
      loadBalancerName: map['loadBalancerName'] == null ? null : map['loadBalancerName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
      securityGroups: map['securityGroups'] == null ? null : (map['securityGroups'] as List).cast<String>(),
      subnetMappings: map['subnetMappings'] == null ? null : pulumi.Input.decodeList<SubnetMapping>(map['subnetMappings'], (value) => SubnetMapping.fromMap((value as Map).cast<String, dynamic>())),
      subnets: map['subnets'] == null ? null : (map['subnets'] as List).cast<String>(),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

