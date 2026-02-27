import 'package:pulumi/pulumi.dart';
import '../endpoint_cidr_options/endpoint_cidr_options.dart';
import '../endpoint_load_balancer_options/endpoint_load_balancer_options.dart';
import '../endpoint_network_interface_options/endpoint_network_interface_options.dart';
import '../endpoint_rds_options/endpoint_rds_options.dart';
import '../endpoint_sse_specification/endpoint_sse_specification.dart';
import 'endpoint_args5.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Verified Access Endpoint.
///
/// ## Example Usage
///
/// ### ALB Example
///
///
///
/// ### Network Interface Example
///
///
///
/// ### Cidr Example
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instances using the  `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/endpoint:Endpoint example vae-8012925589
/// ```
class Endpoint5 extends CustomResource {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  late final Output<String?> applicationDomain;

  /// The type of attachment. Currently, only `vpc` is supported.
  late final Output<String> attachmentType;

  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  late final Output<EndpointCidrOptions?> cidrOptions;

  /// A description for the Verified Access endpoint.
  late final Output<String?> description;

  /// Returned if endpoint has a device trust provider attached.
  late final Output<String> deviceValidationDomain;

  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  late final Output<String?> domainCertificateArn;

  /// A DNS name that is generated for the endpoint.
  late final Output<String> endpointDomain;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  late final Output<String?> endpointDomainPrefix;

  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  late final Output<String> endpointType;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  late final Output<EndpointLoadBalancerOptions?> loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  late final Output<EndpointNetworkInterfaceOptions?> networkInterfaceOptions;

  /// The policy document that is associated with this resource.
  late final Output<String?> policyDocument;
  late final Output<EndpointRdsOptions?> rdsOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  late final Output<List<String>?> securityGroupIds;

  /// The options in use for server side encryption.
  late final Output<EndpointSseSpecification> sseSpecification;

  /// Key-value tags for the Verified Access Endpoint. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  late final Output<String> verifiedAccessGroupId;
  late final Output<String> verifiedAccessInstanceId;

  Endpoint5(
    String name, {
    EndpointArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/endpoint:Endpoint',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationDomain = registerOutput<String?>('applicationDomain');
    this.attachmentType = registerOutput<String>('attachmentType');
    this.cidrOptions = registerOutput<EndpointCidrOptions?>('cidrOptions');
    this.description = registerOutput<String?>('description');
    this.deviceValidationDomain =
        registerOutput<String>('deviceValidationDomain');
    this.domainCertificateArn = registerOutput<String?>('domainCertificateArn');
    this.endpointDomain = registerOutput<String>('endpointDomain');
    this.endpointDomainPrefix = registerOutput<String?>('endpointDomainPrefix');
    this.endpointType = registerOutput<String>('endpointType');
    this.loadBalancerOptions =
        registerOutput<EndpointLoadBalancerOptions?>('loadBalancerOptions');
    this.networkInterfaceOptions =
        registerOutput<EndpointNetworkInterfaceOptions?>(
            'networkInterfaceOptions');
    this.policyDocument = registerOutput<String?>('policyDocument');
    this.rdsOptions = registerOutput<EndpointRdsOptions?>('rdsOptions');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.sseSpecification =
        registerOutput<EndpointSseSpecification>('sseSpecification');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.verifiedAccessGroupId =
        registerOutput<String>('verifiedAccessGroupId');
    this.verifiedAccessInstanceId =
        registerOutput<String>('verifiedAccessInstanceId');
  }
}
