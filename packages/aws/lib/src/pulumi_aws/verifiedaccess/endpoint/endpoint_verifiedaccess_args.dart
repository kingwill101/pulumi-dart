// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../endpoint_cidr_options/endpoint_cidr_options.dart';
import '../endpoint_load_balancer_options/endpoint_load_balancer_options.dart';
import '../endpoint_network_interface_options/endpoint_network_interface_options.dart';
import '../endpoint_rds_options/endpoint_rds_options.dart';
import '../endpoint_sse_specification/endpoint_sse_specification.dart';

/// The set of arguments for Endpoint.
class EndpointVerifiedaccessArgs {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? applicationDomain;

  /// The type of attachment. Currently, only `vpc` is supported.
  final pulumi.Input<String> attachmentType;

  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  final pulumi.Input<EndpointCidrOptions>? cidrOptions;

  /// A description for the Verified Access endpoint.
  final pulumi.Input<String>? description;

  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  final pulumi.Input<String>? domainCertificateArn;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  final pulumi.Input<String>? endpointDomainPrefix;

  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  final pulumi.Input<String> endpointType;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  final pulumi.Input<EndpointLoadBalancerOptions>? loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  final pulumi.Input<EndpointNetworkInterfaceOptions>? networkInterfaceOptions;

  /// The policy document that is associated with this resource.
  final pulumi.Input<String>? policyDocument;
  final pulumi.Input<EndpointRdsOptions>? rdsOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  final pulumi.Input<List<String>>? securityGroupIds;

  /// The options in use for server side encryption.
  final pulumi.Input<EndpointSseSpecification>? sseSpecification;

  /// Key-value tags for the Verified Access Endpoint. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> verifiedAccessGroupId;

  EndpointVerifiedaccessArgs({
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
      map['cidrOptions'] = pulumi.Input.mapOptionalInputValue<
          EndpointCidrOptions,
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
      map['loadBalancerOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointLoadBalancerOptions, Map<String, dynamic>>(
          loadBalancerOptionsValue, (value) => value.toMap());
    }
    final networkInterfaceOptionsValue = networkInterfaceOptions;
    if (networkInterfaceOptionsValue != null) {
      map['networkInterfaceOptions'] = pulumi.Input.mapOptionalInputValue<
              EndpointNetworkInterfaceOptions, Map<String, dynamic>>(
          networkInterfaceOptionsValue, (value) => value.toMap());
    }
    final policyDocumentValue = policyDocument;
    if (policyDocumentValue != null) {
      map['policyDocument'] = policyDocumentValue;
    }
    final rdsOptionsValue = rdsOptions;
    if (rdsOptionsValue != null) {
      map['rdsOptions'] = pulumi.Input.mapOptionalInputValue<EndpointRdsOptions,
          Map<String, dynamic>>(rdsOptionsValue, (value) => value.toMap());
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
      map['sseSpecification'] = pulumi.Input.mapOptionalInputValue<
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

  factory EndpointVerifiedaccessArgs.fromMap(Map<String, dynamic> map) {
    return EndpointVerifiedaccessArgs(
      applicationDomain:
          pulumi.Input.asOptionalInput<String>(map['applicationDomain']),
      attachmentType: pulumi.Input.asInput<String>(map['attachmentType']),
      cidrOptions:
          pulumi.Input.asOptionalInput<EndpointCidrOptions>(map['cidrOptions']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      domainCertificateArn:
          pulumi.Input.asOptionalInput<String>(map['domainCertificateArn']),
      endpointDomainPrefix:
          pulumi.Input.asOptionalInput<String>(map['endpointDomainPrefix']),
      endpointType: pulumi.Input.asInput<String>(map['endpointType']),
      loadBalancerOptions:
          pulumi.Input.asOptionalInput<EndpointLoadBalancerOptions>(
              map['loadBalancerOptions']),
      networkInterfaceOptions:
          pulumi.Input.asOptionalInput<EndpointNetworkInterfaceOptions>(
              map['networkInterfaceOptions']),
      policyDocument:
          pulumi.Input.asOptionalInput<String>(map['policyDocument']),
      rdsOptions:
          pulumi.Input.asOptionalInput<EndpointRdsOptions>(map['rdsOptions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      sseSpecification: pulumi.Input.asOptionalInput<EndpointSseSpecification>(
          map['sseSpecification']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      verifiedAccessGroupId:
          pulumi.Input.asInput<String>(map['verifiedAccessGroupId']),
    );
  }
}
