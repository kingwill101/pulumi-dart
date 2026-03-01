// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_dns_options.dart';
import 'vpc_endpoint_subnet_configuration.dart';

/// {@template pulumi_ec2_vpc_endpoint_vpc_endpoint_args_doc}
/// The set of arguments for VpcEndpoint.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_vpc_endpoint_args_doc}
class VpcEndpointArgs {
  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  final pulumi.Input<bool>? autoAccept;
  /// The DNS options for the endpoint. See dns_options below.
  final pulumi.Input<VpcEndpointDnsOptions>? dnsOptions;
  /// The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  final pulumi.Input<String>? ipAddressType;
  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final pulumi.Input<String>? policy;
  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// Defaults to `false`.
  final pulumi.Input<bool>? privateDnsEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
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
  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  final pulumi.Input<List<VpcEndpointSubnetConfiguration>>? subnetConfigurations;
  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  final pulumi.Input<String>? vpcEndpointType;
  /// The ID of the VPC in which the endpoint will be used.
  final pulumi.Input<String> vpcId;

  /// Creates a new [VpcEndpointArgs].
  /// [autoAccept] Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  /// [dnsOptions] The DNS options for the endpoint. See dns_options below.
  /// [ipAddressType] The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  /// [policy] A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  /// [privateDnsEnabled] Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceConfigurationArn] The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [routeTableIds] One or more route table IDs. Applicable for endpoints of type `Gateway`.
  /// [securityGroupIds] The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// [serviceName] The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [serviceNetworkArn] The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  /// [serviceRegion] The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  /// [subnetConfigurations] Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  /// [subnetIds] The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcEndpointType] The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  /// [vpcId] The ID of the VPC in which the endpoint will be used.
  VpcEndpointArgs({
    pulumi.Output<bool>? autoAccept,
    pulumi.Output<VpcEndpointDnsOptions>? dnsOptions,
    pulumi.Output<String>? ipAddressType,
    pulumi.Output<String>? policy,
    pulumi.Output<bool>? privateDnsEnabled,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceConfigurationArn,
    pulumi.Output<List<String>>? routeTableIds,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? serviceName,
    pulumi.Output<String>? serviceNetworkArn,
    pulumi.Output<String>? serviceRegion,
    pulumi.Output<List<VpcEndpointSubnetConfiguration>>? subnetConfigurations,
    pulumi.Output<List<String>>? subnetIds,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vpcEndpointType,
    required pulumi.Output<String> vpcId,
  }) :
      autoAccept = pulumi.Input.asOptionalInput<bool>(autoAccept),
      dnsOptions = pulumi.Input.asOptionalInput<VpcEndpointDnsOptions>(dnsOptions),
      ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      privateDnsEnabled = pulumi.Input.asOptionalInput<bool>(privateDnsEnabled),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceConfigurationArn = pulumi.Input.asOptionalInput<String>(resourceConfigurationArn),
      routeTableIds = pulumi.Input.asOptionalInput<List<String>>(routeTableIds),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      serviceNetworkArn = pulumi.Input.asOptionalInput<String>(serviceNetworkArn),
      serviceRegion = pulumi.Input.asOptionalInput<String>(serviceRegion),
      subnetConfigurations = pulumi.Input.asOptionalInput<List<VpcEndpointSubnetConfiguration>>(subnetConfigurations),
      subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcEndpointType = pulumi.Input.asOptionalInput<String>(vpcEndpointType),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAccept': ?autoAccept,
      'dnsOptions': ?pulumi.Input.mapOptionalInputValue<VpcEndpointDnsOptions, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'ipAddressType': ?ipAddressType,
      'policy': ?policy,
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'resourceConfigurationArn': ?resourceConfigurationArn,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'serviceName': ?serviceName,
      'serviceNetworkArn': ?serviceNetworkArn,
      'serviceRegion': ?serviceRegion,
      'subnetConfigurations': ?pulumi.Input.mapOptionalInputValue<List<VpcEndpointSubnetConfiguration>, List<Map<String, dynamic>>>(subnetConfigurations, (value) => pulumi.Input.encodeList<VpcEndpointSubnetConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcEndpointType': ?vpcEndpointType,
      'vpcId': vpcId,
    };
  }

  factory VpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointArgs(
      autoAccept: map['autoAccept'] == null ? null : pulumi.Output.create<bool>(map['autoAccept'] as bool),
      dnsOptions: map['dnsOptions'] == null ? null : pulumi.Output.create<VpcEndpointDnsOptions>(VpcEndpointDnsOptions.fromMap((map['dnsOptions'] as Map).cast<String, dynamic>())),
      ipAddressType: map['ipAddressType'] == null ? null : pulumi.Output.create<String>(map['ipAddressType'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      privateDnsEnabled: map['privateDnsEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateDnsEnabled'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceConfigurationArn: map['resourceConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['resourceConfigurationArn'] as String),
      routeTableIds: map['routeTableIds'] == null ? null : pulumi.Output.create<List<String>>((map['routeTableIds'] as List).cast<String>()),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      serviceNetworkArn: map['serviceNetworkArn'] == null ? null : pulumi.Output.create<String>(map['serviceNetworkArn'] as String),
      serviceRegion: map['serviceRegion'] == null ? null : pulumi.Output.create<String>(map['serviceRegion'] as String),
      subnetConfigurations: map['subnetConfigurations'] == null ? null : pulumi.Output.create<List<VpcEndpointSubnetConfiguration>>(pulumi.Input.decodeList<VpcEndpointSubnetConfiguration>(map['subnetConfigurations'], (value) => VpcEndpointSubnetConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      subnetIds: map['subnetIds'] == null ? null : pulumi.Output.create<List<String>>((map['subnetIds'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcEndpointType: map['vpcEndpointType'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointType'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

