// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_dns_entry.dart';
import 'vpc_endpoint_dns_options.dart';
import 'vpc_endpoint_subnet_configuration.dart';

/// Input properties used for looking up and filtering VpcEndpoint resources.
class VpcEndpointState {
  /// The Amazon Resource Name (ARN) of the VPC endpoint.
  final pulumi.Input<String>? arn;
  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  final pulumi.Input<bool>? autoAccept;
  /// The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final pulumi.Input<List<String>>? cidrBlocks;
  /// The DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS blocks are documented below.
  final pulumi.Input<List<VpcEndpointDnsEntry>>? dnsEntries;
  /// The DNS options for the endpoint. See dns_options below.
  final pulumi.Input<VpcEndpointDnsOptions>? dnsOptions;
  /// The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  final pulumi.Input<String>? ipAddressType;
  /// One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// The ID of the AWS account that owns the VPC endpoint.
  final pulumi.Input<String>? ownerId;
  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final pulumi.Input<String>? policy;
  /// The prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final pulumi.Input<String>? prefixListId;
  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// Defaults to `false`.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  final pulumi.Input<bool>? requesterManaged;
  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final pulumi.Input<String>? resourceConfigurationArn;
  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  final pulumi.Input<List<String>>? routeTableIds;
  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final pulumi.Input<String>? serviceName;
  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final pulumi.Input<String>? serviceNetworkArn;
  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  final pulumi.Input<String>? serviceRegion;
  /// The state of the VPC endpoint.
  final pulumi.Input<String>? state;
  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  final pulumi.Input<List<VpcEndpointSubnetConfiguration>>? subnetConfigurations;
  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  final pulumi.Input<String>? vpcEndpointType;
  /// The ID of the VPC in which the endpoint will be used.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [VpcEndpointState].
  /// [arn] The Amazon Resource Name (ARN) of the VPC endpoint.
  /// [autoAccept] Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  /// [cidrBlocks] The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [dnsEntries] The DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS blocks are documented below.
  /// [dnsOptions] The DNS options for the endpoint. See dns_options below.
  /// [ipAddressType] The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  /// [networkInterfaceIds] One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  /// [ownerId] The ID of the AWS account that owns the VPC endpoint.
  /// [policy] A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  /// [prefixListId] The prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [privateDnsEnabled] Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [requesterManaged] Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  /// [resourceConfigurationArn] The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [routeTableIds] One or more route table IDs. Applicable for endpoints of type `Gateway`.
  /// [securityGroupIds] The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// [serviceName] The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [serviceNetworkArn] The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [serviceRegion] The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  /// [state] The state of the VPC endpoint.
  /// [subnetConfigurations] Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  /// [subnetIds] The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcEndpointType] The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  /// [vpcId] The ID of the VPC in which the endpoint will be used.
  VpcEndpointState({
    this.arn,
    this.autoAccept,
    this.cidrBlocks,
    this.dnsEntries,
    this.dnsOptions,
    this.ipAddressType,
    this.networkInterfaceIds,
    this.ownerId,
    this.policy,
    this.prefixListId,
    this.privateDnsEnabled,
    this.region,
    this.requesterManaged,
    this.resourceConfigurationArn,
    this.routeTableIds,
    this.securityGroupIds,
    this.serviceName,
    this.serviceNetworkArn,
    this.serviceRegion,
    this.state,
    this.subnetConfigurations,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.vpcEndpointType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoAccept': ?autoAccept,
      'cidrBlocks': ?cidrBlocks,
      'dnsEntries': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointDnsEntry>, List<Map<String, dynamic>>>(dnsEntries, (value) => pulumi.Input.encodeList<VpcEndpointDnsEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<VpcEndpointDnsOptions, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'policy': ?policy,
      'prefixListId': ?prefixListId,
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'requesterManaged': ?requesterManaged,
      'resourceConfigurationArn': ?resourceConfigurationArn,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'serviceName': ?serviceName,
      'serviceNetworkArn': ?serviceNetworkArn,
      'serviceRegion': ?serviceRegion,
      'state': ?state,
      'subnetConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointSubnetConfiguration>, List<Map<String, dynamic>>>(subnetConfigurations, (value) => pulumi.Input.encodeList<VpcEndpointSubnetConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcEndpointType': ?vpcEndpointType,
      'vpcId': ?vpcId,
    };
  }

  factory VpcEndpointState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      autoAccept: map['autoAccept'] == null ? null : (map['autoAccept'] as bool).input(),
      cidrBlocks: map['cidrBlocks'] == null ? null : ((map['cidrBlocks'] as List).cast<String>()).input(),
      dnsEntries: map['dnsEntries'] == null ? null : (pulumi.Input.decodeList<VpcEndpointDnsEntry>(map['dnsEntries'], (value) => VpcEndpointDnsEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dnsOptions: map['dnsOptions'] == null ? null : (VpcEndpointDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())).input(),
      ipAddressType: map['ipAddressType'] == null ? null : (map['ipAddressType'] as String).input(),
      networkInterfaceIds: map['networkInterfaceIds'] == null ? null : ((map['networkInterfaceIds'] as List).cast<String>()).input(),
      ownerId: map['ownerId'] == null ? null : (map['ownerId'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      prefixListId: map['prefixListId'] == null ? null : (map['prefixListId'] as String).input(),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : (map['privateDnsEnabled'] as bool).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      requesterManaged: map['requesterManaged'] == null ? null : (map['requesterManaged'] as bool).input(),
      resourceConfigurationArn: map['resourceConfigurationArn'] == null ? null : (map['resourceConfigurationArn'] as String).input(),
      routeTableIds: map['routeTableIds'] == null ? null : ((map['routeTableIds'] as List).cast<String>()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : ((map['securityGroupIds'] as List).cast<String>()).input(),
      serviceName: map['serviceName'] == null ? null : (map['serviceName'] as String).input(),
      serviceNetworkArn: map['serviceNetworkArn'] == null ? null : (map['serviceNetworkArn'] as String).input(),
      serviceRegion: map['serviceRegion'] == null ? null : (map['serviceRegion'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      subnetConfigurations: map['subnetConfigurations'] == null ? null : (pulumi.Input.decodeList<VpcEndpointSubnetConfiguration>(map['subnetConfigurations'], (value) => VpcEndpointSubnetConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      subnetIds: map['subnetIds'] == null ? null : ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      vpcEndpointType: map['vpcEndpointType'] == null ? null : (map['vpcEndpointType'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

