// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../endpoint_cidr_options/endpoint_cidr_options.dart';
import '../endpoint_load_balancer_options/endpoint_load_balancer_options.dart';
import '../endpoint_network_interface_options/endpoint_network_interface_options.dart';
import '../endpoint_rds_options/endpoint_rds_options.dart';
import '../endpoint_sse_specification/endpoint_sse_specification.dart';

/// The set of arguments for Endpoint.
class EndpointArgs5 {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final Input<String>? applicationDomain;

  /// The type of attachment. Currently, only <span pulumi-lang-nodejs="`vpc`" pulumi-lang-dotnet="`Vpc`" pulumi-lang-go="`vpc`" pulumi-lang-python="`vpc`" pulumi-lang-yaml="`vpc`" pulumi-lang-java="`vpc`">`vpc`</span> is supported.
  final Input<String> attachmentType;

  /// The CIDR block details. This parameter is required if the endpoint type is <span pulumi-lang-nodejs="`cidr`" pulumi-lang-dotnet="`Cidr`" pulumi-lang-go="`cidr`" pulumi-lang-python="`cidr`" pulumi-lang-yaml="`cidr`" pulumi-lang-java="`cidr`">`cidr`</span>.
  final Input<EndpointCidrOptions>? cidrOptions;

  /// A description for the Verified Access endpoint.
  final Input<String>? description;

  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final Input<String>? domainCertificateArn;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  final Input<String>? endpointDomainPrefix;

  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  final Input<String> endpointType;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  final Input<EndpointLoadBalancerOptions>? loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  final Input<EndpointNetworkInterfaceOptions>? networkInterfaceOptions;

  /// The policy document that is associated with this resource.
  final Input<String>? policyDocument;
  final Input<EndpointRdsOptions>? rdsOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  final Input<List<String>>? securityGroupIds;

  /// The options in use for server side encryption.
  final Input<EndpointSseSpecification>? sseSpecification;

  /// Key-value tags for the Verified Access Endpoint. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  final Input<String> verifiedAccessGroupId;

  EndpointArgs5({
    this.applicationDomain,
    required this.attachmentType,
    this.cidrOptions,
    this.description,
    this.domainCertificateArn,
    this.endpointDomainPrefix,
    required this.endpointType,
    this.loadBalancerOptions,
    this.networkInterfaceOptions,
    this.policyDocument,
    this.rdsOptions,
    this.region,
    this.securityGroupIds,
    this.sseSpecification,
    this.tags,
    required this.verifiedAccessGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final applicationDomainValue = applicationDomain;
    if (applicationDomainValue != null) {
      map['applicationDomain'] = applicationDomainValue;
    }
    map['attachmentType'] = attachmentType;
    final cidrOptionsValue = cidrOptions;
    if (cidrOptionsValue != null) {
      map['cidrOptions'] = Input.mapOptionalInputValue<EndpointCidrOptions,
          Map<String, dynamic>>(cidrOptionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final domainCertificateArnValue = domainCertificateArn;
    if (domainCertificateArnValue != null) {
      map['domainCertificateArn'] = domainCertificateArnValue;
    }
    final endpointDomainPrefixValue = endpointDomainPrefix;
    if (endpointDomainPrefixValue != null) {
      map['endpointDomainPrefix'] = endpointDomainPrefixValue;
    }
    map['endpointType'] = endpointType;
    final loadBalancerOptionsValue = loadBalancerOptions;
    if (loadBalancerOptionsValue != null) {
      map['loadBalancerOptions'] = Input.mapOptionalInputValue<
              EndpointLoadBalancerOptions, Map<String, dynamic>>(
          loadBalancerOptionsValue, (value) => value.toMap());
    }
    final networkInterfaceOptionsValue = networkInterfaceOptions;
    if (networkInterfaceOptionsValue != null) {
      map['networkInterfaceOptions'] = Input.mapOptionalInputValue<
              EndpointNetworkInterfaceOptions, Map<String, dynamic>>(
          networkInterfaceOptionsValue, (value) => value.toMap());
    }
    final policyDocumentValue = policyDocument;
    if (policyDocumentValue != null) {
      map['policyDocument'] = policyDocumentValue;
    }
    final rdsOptionsValue = rdsOptions;
    if (rdsOptionsValue != null) {
      map['rdsOptions'] =
          Input.mapOptionalInputValue<EndpointRdsOptions, Map<String, dynamic>>(
              rdsOptionsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final sseSpecificationValue = sseSpecification;
    if (sseSpecificationValue != null) {
      map['sseSpecification'] = Input.mapOptionalInputValue<
              EndpointSseSpecification, Map<String, dynamic>>(
          sseSpecificationValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['verifiedAccessGroupId'] = verifiedAccessGroupId;
    return map;
  }

  factory EndpointArgs5.fromMap(Map<String, dynamic> map) {
    return EndpointArgs5(
      applicationDomain:
          Input.asOptionalInput<String>(map['applicationDomain']),
      attachmentType: Input.asInput<String>(map['attachmentType']),
      cidrOptions:
          Input.asOptionalInput<EndpointCidrOptions>(map['cidrOptions']),
      description: Input.asOptionalInput<String>(map['description']),
      domainCertificateArn:
          Input.asOptionalInput<String>(map['domainCertificateArn']),
      endpointDomainPrefix:
          Input.asOptionalInput<String>(map['endpointDomainPrefix']),
      endpointType: Input.asInput<String>(map['endpointType']),
      loadBalancerOptions: Input.asOptionalInput<EndpointLoadBalancerOptions>(
          map['loadBalancerOptions']),
      networkInterfaceOptions:
          Input.asOptionalInput<EndpointNetworkInterfaceOptions>(
              map['networkInterfaceOptions']),
      policyDocument: Input.asOptionalInput<String>(map['policyDocument']),
      rdsOptions: Input.asOptionalInput<EndpointRdsOptions>(map['rdsOptions']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      sseSpecification: Input.asOptionalInput<EndpointSseSpecification>(
          map['sseSpecification']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      verifiedAccessGroupId:
          Input.asInput<String>(map['verifiedAccessGroupId']),
    );
  }
}
