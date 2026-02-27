import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_dns_entry/vpc_endpoint_dns_entry.dart';
import '../vpc_endpoint_dns_options/vpc_endpoint_dns_options.dart';
import '../vpc_endpoint_subnet_configuration/vpc_endpoint_subnet_configuration.dart';
import 'vpc_endpoint_args.dart';

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
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import VPC Endpoints using the VPC endpoint `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpoint:VpcEndpoint example vpce-3ecf2a57
/// ```
class VpcEndpoint extends CustomResource {
  /// The Amazon Resource Name (ARN) of the VPC endpoint.
  late final Output<String> arn;

  /// Accept the VPC endpoint (the VPC endpoint and service need to be in the same AWS account).
  late final Output<bool?> autoAccept;

  /// The list of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  late final Output<List<String>> cidrBlocks;

  /// The DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS blocks are documented below.
  late final Output<List<VpcEndpointDnsEntry>> dnsEntries;

  /// The DNS options for the endpoint. See dns_options below.
  late final Output<VpcEndpointDnsOptions> dnsOptions;

  /// The IP address type for the endpoint. Valid values are `ipv4`, `dualstack`, and `ipv6`.
  late final Output<String> ipAddressType;

  /// One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  late final Output<List<String>> networkInterfaceIds;

  /// The ID of the AWS account that owns the VPC endpoint.
  late final Output<String> ownerId;

  /// A policy to attach to the endpoint that controls access to the service. This is a JSON formatted string. Defaults to full access. All `Gateway` and some `Interface` endpoints support policies - see the [relevant AWS documentation](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-endpoints-access.html) for more details.
  late final Output<String> policy;

  /// The prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  late final Output<String> prefixListId;

  /// Whether or not to associate a private hosted zone with the specified VPC. Applicable for endpoints of type `Interface`. Most users will want this enabled to allow services within the VPC to automatically use the endpoint.
  /// Defaults to `false`.
  late final Output<bool> privateDnsEnabled;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  late final Output<bool> requesterManaged;

  /// The ARN of a Resource Configuration to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  late final Output<String?> resourceConfigurationArn;

  /// One or more route table IDs. Applicable for endpoints of type `Gateway`.
  late final Output<List<String>> routeTableIds;

  /// The ID of one or more security groups to associate with the network interface. Applicable for endpoints of type `Interface`.
  /// If no security groups are specified, the VPC's [default security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html#DefaultSecurityGroup) is associated with the endpoint.
  late final Output<List<String>> securityGroupIds;

  /// The service name. For AWS services the service name is usually in the form `com.amazonaws.<region>.<service>` (the SageMaker AI Notebook service is an exception to this rule, the service name is in the form `aws.sagemaker.<region>.notebook`). Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  late final Output<String?> serviceName;

  /// The ARN of a Service Network to connect this VPC Endpoint to. Exactly one of `resource_configuration_arn`, `service_name` or `service_network_arn` is required.
  late final Output<String?> serviceNetworkArn;

  /// The AWS region of the VPC Endpoint Service. If specified, the VPC endpoint will connect to the service in the provided region. Applicable for endpoints of type `Interface`.
  late final Output<String> serviceRegion;

  /// The state of the VPC endpoint.
  late final Output<String> state;

  /// Subnet configuration for the endpoint, used to select specific IPv4 and/or IPv6 addresses to the endpoint. See subnet_configuration below.
  late final Output<List<VpcEndpointSubnetConfiguration>> subnetConfigurations;

  /// The ID of one or more subnets in which to create a network interface for the endpoint. Applicable for endpoints of type `GatewayLoadBalancer` and `Interface`. Interface type endpoints cannot function without being assigned to a subnet.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC endpoint type, `Gateway`, `GatewayLoadBalancer`,`Interface`, `Resource` or `ServiceNetwork`. Defaults to `Gateway`.
  late final Output<String?> vpcEndpointType;

  /// The ID of the VPC in which the endpoint will be used.
  late final Output<String> vpcId;

  VpcEndpoint(
    String name, {
    VpcEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpoint:VpcEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoAccept = registerOutput<bool?>('autoAccept');
    this.cidrBlocks = registerOutput<List<String>>('cidrBlocks');
    this.dnsEntries = registerOutput<List<VpcEndpointDnsEntry>>('dnsEntries');
    this.dnsOptions = registerOutput<VpcEndpointDnsOptions>('dnsOptions');
    this.ipAddressType = registerOutput<String>('ipAddressType');
    this.networkInterfaceIds =
        registerOutput<List<String>>('networkInterfaceIds');
    this.ownerId = registerOutput<String>('ownerId');
    this.policy = registerOutput<String>('policy');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.privateDnsEnabled = registerOutput<bool>('privateDnsEnabled');
    this.region = registerOutput<String>('region');
    this.requesterManaged = registerOutput<bool>('requesterManaged');
    this.resourceConfigurationArn =
        registerOutput<String?>('resourceConfigurationArn');
    this.routeTableIds = registerOutput<List<String>>('routeTableIds');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.serviceName = registerOutput<String?>('serviceName');
    this.serviceNetworkArn = registerOutput<String?>('serviceNetworkArn');
    this.serviceRegion = registerOutput<String>('serviceRegion');
    this.state = registerOutput<String>('state');
    this.subnetConfigurations =
        registerOutput<List<VpcEndpointSubnetConfiguration>>(
            'subnetConfigurations');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcEndpointType = registerOutput<String?>('vpcEndpointType');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
