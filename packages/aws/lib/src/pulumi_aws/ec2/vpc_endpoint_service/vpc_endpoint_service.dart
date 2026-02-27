import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_service_private_dns_name_configuration/vpc_endpoint_service_private_dns_name_configuration.dart';
import 'vpc_endpoint_service_args.dart';

/// Provides a VPC Endpoint Service resource.
/// Service consumers can create an _Interface_ VPC Endpoint to connect to the service.
///
/// > **NOTE on VPC Endpoint Services and VPC Endpoint Service Allowed Principals:** This provider provides
/// both a standalone VPC Endpoint Service Allowed Principal resource
/// and a VPC Endpoint Service resource with an `allowed_principals` attribute. Do not use the same principal ARN in both
/// a VPC Endpoint Service resource and a VPC Endpoint Service Allowed Principal resource. Doing so will cause a conflict
/// and will overwrite the association.
///
/// ## Example Usage
///
/// ### Network Load Balancers
///
///
///
/// ### Gateway Load Balancers
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Services using the VPC endpoint service `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointService:VpcEndpointService foo vpce-svc-0f97a19d3fa8220bc
/// ```
class VpcEndpointService extends CustomResource {
  /// Whether or not VPC endpoint connection requests to the service must be accepted by the service owner - `true` or `false`.
  late final Output<bool> acceptanceRequired;

  /// The ARNs of one or more principals allowed to discover the endpoint service.
  late final Output<List<String>> allowedPrincipals;

  /// The Amazon Resource Name (ARN) of the VPC endpoint service.
  late final Output<String> arn;

  /// A set of Availability Zones in which the service is available.
  late final Output<List<String>> availabilityZones;

  /// A set of DNS names for the service.
  late final Output<List<String>> baseEndpointDnsNames;

  /// Amazon Resource Names (ARNs) of one or more Gateway Load Balancers for the endpoint service.
  late final Output<List<String>?> gatewayLoadBalancerArns;

  /// Whether or not the service manages its VPC endpoints - `true` or `false`.
  late final Output<bool> managesVpcEndpoints;

  /// Amazon Resource Names (ARNs) of one or more Network Load Balancers for the endpoint service.
  late final Output<List<String>?> networkLoadBalancerArns;

  /// The private DNS name for the service.
  late final Output<String> privateDnsName;

  /// List of objects containing information about the endpoint service private DNS name configuration.
  late final Output<List<VpcEndpointServicePrivateDnsNameConfiguration>>
      privateDnsNameConfigurations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The service name.
  late final Output<String> serviceName;

  /// The service type, `Gateway` or `Interface`.
  late final Output<String> serviceType;

  /// Verification state of the VPC endpoint service. Consumers of the endpoint service can use the private name only when the state is `verified`.
  late final Output<String> state;

  /// The supported IP address types. The possible values are `ipv4` and `ipv6`.
  late final Output<List<String>> supportedIpAddressTypes;

  /// The set of regions from which service consumers can access the service.
  late final Output<List<String>> supportedRegions;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  VpcEndpointService(
    String name, {
    VpcEndpointServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointService:VpcEndpointService',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.acceptanceRequired = registerOutput<bool>('acceptanceRequired');
    this.allowedPrincipals = registerOutput<List<String>>('allowedPrincipals');
    this.arn = registerOutput<String>('arn');
    this.availabilityZones = registerOutput<List<String>>('availabilityZones');
    this.baseEndpointDnsNames =
        registerOutput<List<String>>('baseEndpointDnsNames');
    this.gatewayLoadBalancerArns =
        registerOutput<List<String>?>('gatewayLoadBalancerArns');
    this.managesVpcEndpoints = registerOutput<bool>('managesVpcEndpoints');
    this.networkLoadBalancerArns =
        registerOutput<List<String>?>('networkLoadBalancerArns');
    this.privateDnsName = registerOutput<String>('privateDnsName');
    this.privateDnsNameConfigurations =
        registerOutput<List<VpcEndpointServicePrivateDnsNameConfiguration>>(
            'privateDnsNameConfigurations');
    this.region = registerOutput<String>('region');
    this.serviceName = registerOutput<String>('serviceName');
    this.serviceType = registerOutput<String>('serviceType');
    this.state = registerOutput<String>('state');
    this.supportedIpAddressTypes =
        registerOutput<List<String>>('supportedIpAddressTypes');
    this.supportedRegions = registerOutput<List<String>>('supportedRegions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
