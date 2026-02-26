// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_dns_options/vpc_endpoint_dns_options.dart';
import '../vpc_endpoint_subnet_configuration/vpc_endpoint_subnet_configuration.dart';

/// The set of arguments for VpcEndpoint.
class VpcEndpointArgs {
  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  final Input<bool>? autoAccept;

  /// The DNS options for the endpoint. See<span pulumi-lang-nodejs=" dnsOptions " pulumi-lang-dotnet=" DnsOptions " pulumi-lang-go=" dnsOptions " pulumi-lang-python=" dns_options " pulumi-lang-yaml=" dnsOptions " pulumi-lang-java=" dnsOptions "> dns_options </span>below.
  final Input<VpcEndpointDnsOptions>? dnsOptions;

  /// The IP address type for the endpoint. Valid values are <span pulumi-lang-nodejs="`ipv4`" pulumi-lang-dotnet="`Ipv4`" pulumi-lang-go="`ipv4`" pulumi-lang-python="`ipv4`" pulumi-lang-yaml="`ipv4`" pulumi-lang-java="`ipv4`">`ipv4`</span>, <span pulumi-lang-nodejs="`dualstack`" pulumi-lang-dotnet="`Dualstack`" pulumi-lang-go="`dualstack`" pulumi-lang-python="`dualstack`" pulumi-lang-yaml="`dualstack`" pulumi-lang-java="`dualstack`">`dualstack`</span>, and <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  final Input<String>? ipAddressType;

  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final Input<String>? policy;

  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  final Input<String>? resourceConfigurationArn;

  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  final Input<List<String>>? routeTableIds;

  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  final Input<List<String>>? securityGroupIds;

  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  final Input<String>? serviceName;

  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of <span pulumi-lang-nodejs="`resourceConfigurationArn`" pulumi-lang-dotnet="`ResourceConfigurationArn`" pulumi-lang-go="`resourceConfigurationArn`" pulumi-lang-python="`resource_configuration_arn`" pulumi-lang-yaml="`resourceConfigurationArn`" pulumi-lang-java="`resourceConfigurationArn`">`resource_configuration_arn`</span>, <span pulumi-lang-nodejs="`serviceName`" pulumi-lang-dotnet="`ServiceName`" pulumi-lang-go="`serviceName`" pulumi-lang-python="`service_name`" pulumi-lang-yaml="`serviceName`" pulumi-lang-java="`serviceName`">`service_name`</span> or <span pulumi-lang-nodejs="`serviceNetworkArn`" pulumi-lang-dotnet="`ServiceNetworkArn`" pulumi-lang-go="`serviceNetworkArn`" pulumi-lang-python="`service_network_arn`" pulumi-lang-yaml="`serviceNetworkArn`" pulumi-lang-java="`serviceNetworkArn`">`service_network_arn`</span> is required.
  final Input<String>? serviceNetworkArn;

  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  final Input<String>? serviceRegion;

  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See<span pulumi-lang-nodejs=" subnetConfiguration " pulumi-lang-dotnet=" SubnetConfiguration " pulumi-lang-go=" subnetConfiguration " pulumi-lang-python=" subnet_configuration " pulumi-lang-yaml=" subnetConfiguration " pulumi-lang-java=" subnetConfiguration "> subnet_configuration </span>below.
  final Input<List<VpcEndpointSubnetConfiguration>>? subnetConfigurations;

  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  final Input<List<String>>? subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  final Input<String>? vpcEndpointType;

  /// The ID of the VPC in which the endpoint will be used.
  final Input<String> vpcId;

  VpcEndpointArgs({
    this.autoAccept,
    this.dnsOptions,
    this.ipAddressType,
    this.policy,
    this.privateDnsEnabled,
    this.region,
    this.resourceConfigurationArn,
    this.routeTableIds,
    this.securityGroupIds,
    this.serviceName,
    this.serviceNetworkArn,
    this.serviceRegion,
    this.subnetConfigurations,
    this.subnetIds,
    this.tags,
    this.vpcEndpointType,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final dnsOptionsValue = dnsOptions;
    if (dnsOptionsValue != null) {
      map['dnsOptions'] = Input.mapOptionalInputValue<VpcEndpointDnsOptions,
          Map<String, dynamic>>(dnsOptionsValue, (value) => value.toMap());
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue;
    }
    final privateDnsEnabledValue = privateDnsEnabled;
    if (privateDnsEnabledValue != null) {
      map['privateDnsEnabled'] = privateDnsEnabledValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourceConfigurationArnValue = resourceConfigurationArn;
    if (resourceConfigurationArnValue != null) {
      map['resourceConfigurationArn'] = resourceConfigurationArnValue;
    }
    final routeTableIdsValue = routeTableIds;
    if (routeTableIdsValue != null) {
      map['routeTableIds'] = routeTableIdsValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final serviceNameValue = serviceName;
    if (serviceNameValue != null) {
      map['serviceName'] = serviceNameValue;
    }
    final serviceNetworkArnValue = serviceNetworkArn;
    if (serviceNetworkArnValue != null) {
      map['serviceNetworkArn'] = serviceNetworkArnValue;
    }
    final serviceRegionValue = serviceRegion;
    if (serviceRegionValue != null) {
      map['serviceRegion'] = serviceRegionValue;
    }
    final subnetConfigurationsValue = subnetConfigurations;
    if (subnetConfigurationsValue != null) {
      map['subnetConfigurations'] = Input.mapOptionalInputValue<
              List<VpcEndpointSubnetConfiguration>, List<Map<String, dynamic>>>(
          subnetConfigurationsValue,
          (value) => Input.encodeList<VpcEndpointSubnetConfiguration,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcEndpointTypeValue = vpcEndpointType;
    if (vpcEndpointTypeValue != null) {
      map['vpcEndpointType'] = vpcEndpointTypeValue;
    }
    map['vpcId'] = vpcId;
    return map;
  }

  factory VpcEndpointArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointArgs(
      autoAccept: Input.asOptionalInput<bool>(map['autoAccept']),
      dnsOptions:
          Input.asOptionalInput<VpcEndpointDnsOptions>(map['dnsOptions']),
      ipAddressType: Input.asOptionalInput<String>(map['ipAddressType']),
      policy: Input.asOptionalInput<String>(map['policy']),
      privateDnsEnabled: Input.asOptionalInput<bool>(map['privateDnsEnabled']),
      region: Input.asOptionalInput<String>(map['region']),
      resourceConfigurationArn:
          Input.asOptionalInput<String>(map['resourceConfigurationArn']),
      routeTableIds: Input.asOptionalInput<List<String>>(map['routeTableIds']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      serviceName: Input.asOptionalInput<String>(map['serviceName']),
      serviceNetworkArn:
          Input.asOptionalInput<String>(map['serviceNetworkArn']),
      serviceRegion: Input.asOptionalInput<String>(map['serviceRegion']),
      subnetConfigurations:
          Input.asOptionalInput<List<VpcEndpointSubnetConfiguration>>(
              map['subnetConfigurations']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcEndpointType: Input.asOptionalInput<String>(map['vpcEndpointType']),
      vpcId: Input.asInput<String>(map['vpcId']),
    );
  }
}
