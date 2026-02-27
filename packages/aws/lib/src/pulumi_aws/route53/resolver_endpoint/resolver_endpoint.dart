import 'package:pulumi/pulumi.dart';
import '../resolver_endpoint_ip_address/resolver_endpoint_ip_address.dart';
import 'resolver_endpoint_args.dart';

/// Provides a Route 53 Resolver endpoint resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import  Route 53 Resolver endpoints using the Route 53 Resolver endpoint ID. For example:
///
/// ```sh
/// $ pulumi import aws:route53/resolverEndpoint:ResolverEndpoint foo rslvr-in-abcdef01234567890
/// ```
class ResolverEndpoint extends CustomResource {
  /// ARN of the Route 53 Resolver endpoint.
  late final Output<String> arn;

  /// Direction of DNS queries to or from the Route 53 Resolver endpoint.
  /// Valid values are `INBOUND` (resolver forwards DNS queries to the DNS service for a VPC from your network or another VPC), `OUTBOUND` (resolver forwards DNS queries from the DNS service for a VPC to your network or another VPC) or `INBOUND_DELEGATION` (resolver delegates queries to Route 53 private hosted zones from your network).
  late final Output<String> direction;

  /// ID of the VPC that you want to create the resolver endpoint in.
  late final Output<String> hostVpcId;

  /// Subnets and IP addresses in your VPC that you want DNS queries to pass through on the way from your VPCs
  /// to your network (for outbound endpoints) or on the way from your network to your VPCs (for inbound endpoints). Described below.
  late final Output<List<ResolverEndpointIpAddress>> ipAddresses;

  /// Friendly name of the Route 53 Resolver endpoint.
  late final Output<String> name;

  /// Protocols you want to use for the Route 53 Resolver endpoint.
  /// Valid values are `DoH`, `Do53`, or `DoH-FIPS`.
  late final Output<List<String>> protocols;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Endpoint IP type. This endpoint type is applied to all IP addresses.
  /// Valid values are `IPV6`,`IPV4` or `DUALSTACK` (both IPv4 and IPv6).
  late final Output<String> resolverEndpointType;

  /// Boolean indicating whether RNI enhanced metrics are enabled for the Resolver endpoint. Defaults to `false`. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  late final Output<bool> rniEnhancedMetricsEnabled;

  /// ID of one or more security groups that you want to use to control access to this VPC.
  late final Output<List<String>> securityGroupIds;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Boolean indicating whether target name server metrics are enabled for the outbound Resolver endpoints. Defaults to `false`. This argument is supported only for outbound endpoints. Once set, changing the value back to `false` requires explicitly specifying `false` rather than removing the argument.
  late final Output<bool> targetNameServerMetricsEnabled;

  ResolverEndpoint(
    String name, {
    ResolverEndpointArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:route53/resolverEndpoint:ResolverEndpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.direction = registerOutput<String>('direction');
    this.hostVpcId = registerOutput<String>('hostVpcId');
    this.ipAddresses =
        registerOutput<List<ResolverEndpointIpAddress>>('ipAddresses');
    this.name = registerOutput<String>('name');
    this.protocols = registerOutput<List<String>>('protocols');
    this.region = registerOutput<String>('region');
    this.resolverEndpointType = registerOutput<String>('resolverEndpointType');
    this.rniEnhancedMetricsEnabled =
        registerOutput<bool>('rniEnhancedMetricsEnabled');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetNameServerMetricsEnabled =
        registerOutput<bool>('targetNameServerMetricsEnabled');
  }
}
