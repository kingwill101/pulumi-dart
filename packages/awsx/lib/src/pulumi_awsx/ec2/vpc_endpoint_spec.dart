// ignore_for_file: unused_element, unnecessary_cast

/// Provides a VPC Endpoint resource.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Associations:** The provider provides both standalone VPC Endpoint Associations for
/// Route Tables - (an association between a VPC endpoint and a single `route_table_id`),
/// Security Groups - (an association between a VPC endpoint and a single `security_group_id`),
/// and Subnets - (an association between a VPC endpoint and a single `subnet_id`) and
/// a VPC Endpoint resource with `route_table_ids` and `subnet_ids` attributes.
/// Do not use the same resource ID in both a VPC Endpoint resource and a VPC Endpoint Association resource.
/// Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### Basic w/ Tags
///
///
///
/// ### Cross-region enabled AWS services
///
///
///
/// ### Interface Endpoint Type
///
///
///
/// ### Interface Endpoint Type with User-Defined IP Address
///
///
///
/// ### Gateway Load Balancer Endpoint Type
///
///
///
/// ### VPC Lattice Resource Configuration Endpoint Type
///
///
///
/// ### VPC Lattice Service Network Endpoint Type
///
///
///
/// ### Non-AWS Service
///
///
///
/// > **NOTE The `dns_entry` output is a list of maps:** This provider interpolation support for lists of maps requires the `lookup` and `[]` until full support of lists of maps is available
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the VPC endpoint.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
///
/// * `region` (String) Region where this resource is managed.
///
/// Using `pulumi import`, import VPC Endpoints using the VPC endpoint `id`. For example:
///
/// % pulumi import aws_vpc_endpoint.example vpce-3ecf2a57
class VpcEndpointSpec {
  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  final bool? autoAccept;

  /// The DNS options for the endpoint. See dns_options below.
  final Map<String, dynamic>? dnsOptions;

  /// The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  final String? ipAddressType;

  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  final String? policy;

  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type Interface. Defaults to `false`.
  final bool? privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final String? region;

  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final String? resourceConfigurationArn;

  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  final List<String>? routeTableIds;

  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  final List<String>? securityGroupIds;

  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`).
  final String serviceName;

  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  final String? serviceNetworkArn;

  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  final String? serviceRegion;

  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  final List<Map<String, dynamic>>? subnetConfigurations;

  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  final List<String>? subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Map<String, String>? tags;

  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  final String? vpcEndpointType;

  VpcEndpointSpec({
    this.autoAccept,
    this.dnsOptions,
    this.ipAddressType,
    this.policy,
    this.privateDnsEnabled,
    this.region,
    this.resourceConfigurationArn,
    this.routeTableIds,
    this.securityGroupIds,
    required this.serviceName,
    this.serviceNetworkArn,
    this.serviceRegion,
    this.subnetConfigurations,
    this.subnetIds,
    this.tags,
    this.vpcEndpointType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] = autoAcceptValue;
    }
    final dnsOptionsValue = dnsOptions;
    if (dnsOptionsValue != null) {
      map['dnsOptions'] = dnsOptionsValue;
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
    map['serviceName'] = serviceName;
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
      map['subnetConfigurations'] = subnetConfigurationsValue;
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
    return map;
  }

  factory VpcEndpointSpec.fromMap(Map<String, dynamic> map) {
    return VpcEndpointSpec(
      autoAccept: map['autoAccept'] == null ? null : map['autoAccept'] as bool,
      dnsOptions: map['dnsOptions'] == null
          ? null
          : (map['dnsOptions'] as Map).cast<String, dynamic>(),
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      privateDnsEnabled: map['privateDnsEnabled'] == null
          ? null
          : map['privateDnsEnabled'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      resourceConfigurationArn: map['resourceConfigurationArn'] == null
          ? null
          : map['resourceConfigurationArn'] as String,
      routeTableIds: map['routeTableIds'] == null
          ? null
          : (map['routeTableIds'] as List).cast<String>(),
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      serviceName: map['serviceName'] as String,
      serviceNetworkArn: map['serviceNetworkArn'] == null
          ? null
          : map['serviceNetworkArn'] as String,
      serviceRegion:
          map['serviceRegion'] == null ? null : map['serviceRegion'] as String,
      subnetConfigurations: map['subnetConfigurations'] == null
          ? null
          : (map['subnetConfigurations'] as List).cast<Map<String, dynamic>>(),
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcEndpointType: map['vpcEndpointType'] == null
          ? null
          : map['vpcEndpointType'] as String,
    );
  }
}
